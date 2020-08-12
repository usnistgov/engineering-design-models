      SUBROUTINE USER1(GG,T,C,Q,QD,R,TIME,DT,IT,KODE,NOCON,MAXNO,
     +ICONV,DUM1,DUM2,DTP,TF)
      DIMENSION GG(*),QD(*),T(*),C(*),Q(*),R(*),ICONV(*)
      CHARACTER*120 LINE
C
C     LIMCND is the limt of the number of nodes in ablation group(s).
C
      PARAMETER (LIMND=10000,LIMGD=10000,LIMCND=20000)
      PARAMETER (LIMNDG=2000)
      DIMENSION GEOM(3,4,LIMGD),NDGRID(8,LIMGD),TOLD(LIMND)
      DIMENSION GRID(3,LIMGD),TNEW(LIMND)
      DIMENSION THETA(2,LIMCND),ICNDND(2,LIMCND)
      DIMENSION ENVTIME(100),ZR(2,28,100),TSURF(28,100)
      DIMENSION GRIDZR(2,3),NODABL(LIMNDG),NODBND(LIMNDG)
      DIMENSION NODINT(LIMNDG)
      DIMENSION NABLBND(3,LIMNDG)
      DIMENSION P5(2),CZR0(2),CZR(2,4),TN(4),IGCUT(3),IND(4)
      DIMENSION CUTZR(2,2),TB(2),RNORM(2),DIS(4)
      LOGICAL ISINK(LIMND)
      DATA KINIT/0/
      SAVE
C     -------------------------------------------
C     Element associativity 
C     Element profile
C
C             1
C            / \
C           3'  1'
C          /     \
C         3---2'--2
C
C     Primed are the profile beam number to this profile triangle node.
C     Each triangle node is associated with three profile beams and
C     they are numbered as above.
C
      IDEBUG=0
C     ----------------
C      Initialization 
C     ----------------
C
      IF (KINIT.EQ.0) THEN
C
C       Read in model geometry
C
        CALL READPROP2(PROP,GEOM,NDGRID,GRID,'N','Y','Y','Y')
C
C       Find all the nodes in the groups
C
        CALL NAMAR('ABLATED',NODABL,NUMABL)
        CALL NAMAR('BOUNDAR',NODBND,NUMBND)
        CALL NAMAR('INITIAL',NODINT,NUMINT)
C
C         Construct the associativity array
C         NABLBND(J,I)=the beam on edge J of triangle profile node I.
C
        DO 10 I=1, LIMNDG
          NABLBND(1,I)=0
          NABLBND(2,I)=0
          NABLBND(3,I)=0
10      CONTINUE          
        DO 30 IABL=1, NUMABL
           NABL=ICONV(NODABL(IABL))
           DO 20 IBND=1, NUMBND
             NBND=ICONV(NODBND(IBND))
             NBNDI=NODBND(IBND)
             IF (NDGRID(1,NBND).EQ.NDGRID(1,NABL).AND.
     +          NDGRID(2,NBND).EQ.NDGRID(2,NABL)) THEN
                NABLBND(1,NABL)=NBNDI
                GOTO 20
             ELSE IF (NDGRID(2,NBND).EQ.NDGRID(1,NABL).AND.
     +          NDGRID(1,NBND).EQ.NDGRID(2,NABL)) THEN
                NABLBND(1,NABL)=NBNDI
                GOTO 20
             ELSE IF (NDGRID(1,NBND).EQ.NDGRID(2,NABL).AND.
     +          NDGRID(2,NBND).EQ.NDGRID(3,NABL)) THEN
                NABLBND(2,NABL)=NBNDI
                GOTO 20
             ELSE IF (NDGRID(2,NBND).EQ.NDGRID(2,NABL).AND.
     +          NDGRID(1,NBND).EQ.NDGRID(3,NABL)) THEN
                NABLBND(2,NABL)=NBNDI
                GOTO 20
             ELSE IF (NDGRID(1,NBND).EQ.NDGRID(3,NABL).AND.
     +          NDGRID(2,NBND).EQ.NDGRID(1,NABL)) THEN
                NABLBND(3,NABL)=NBNDI
                GOTO 20
             ELSE 
                IF (NDGRID(2,NBND).EQ.NDGRID(3,NABL).AND.
     +            NDGRID(1,NBND).EQ.NDGRID(1,NABL)) THEN
                  NABLBND(3,NABL)=NBNDI
                  GOTO 20
                ENDIF 
             ENDIF
20         CONTINUE
30       CONTINUE
         IF(IDEBUG.GT.3) THEN
         DO 35 IABL=1, NUMABL
           ND0=ICONV(NODABL(IABL))
           ND0I=NODABL(IABL)
           ND1=NABLBND(1,ND0I)
           ND2=NABLBND(2,ND0I)
           ND3=NABLBND(3,ND0I)
C          PRINT *, 'ND=',ND0,ICONV(ND1),ICONV(ND2),ICONV(ND3)
35       CONTINUE
         ENDIF
C
C          Calculate angle of each conductance path
C
         DO 40 I=1,NOCON
           CALL TMGN12(I,K1I,K2I,0)
           K1=ICONV(K1I)
           K2=ICONV(K2I)
           DX=(GEOM(1,2,K2I)-GEOM(1,2,K1I))
           DY=(GEOM(2,2,K2I)-GEOM(2,2,K1I))
           DXY=SQRT(DX*DX+DY*DY)
           DZ=ABS(GEOM(3,2,K2I)-GEOM(3,2,K1I))
           DD=SQRT(DX**2+DZ**2+DY*DY)
           THETA(1,I)=DZ/DD
           THETA(2,I)=DXY/DD
           ICNDND(1,I)=K1I
           ICNDND(2,I)=K2I
C          IF(IDEBUG.GT.4) THEN
C            PRINT *,'NODES',K1,K2,' ANGLE',THETA(1,I),THETA(2,I)
C          ENDIF
40       CONTINUE
C
C         Read in the ablated surface data
C
         OPEN(UNIT=20,FILE='absurf.dat',STATUS='OLD')
         I=0
50       READ(20,'(A120)',END=90) LINE
         IF(LINE(8:8).EQ.'E') THEN
           I=I+1
           READ(20,'(A120)',END=90) LINE
           READ(20,*,END=90) IGARB,ENVTIME(I)
           DO 60 J=1,5
             READ(20,'(A120)',END=90) LINE
60         CONTINUE
           DO 70 J=1,28
             READ(20,*,ERR=80) ZR(1,J,I),ZR(2,J,I),GARB1,GARB2,GARB3,
     +       TSURF(J,I)
70         CONTINUE
80         CONTINUE
         ENDIF
         GOTO 50
90       CONTINUE
C
C        Establish the first boundary condition
C
        DO 95 II=1, 100
           IF(ENVTIME(II).GE.TIME) THEN
             NENV=II-1
             IF(NENV.LT.1) NENV=1
             GOTO 98
           ENDIF
95      CONTINUE 
98      CONTINUE
        DISMAX=0
        DO 92 IQ=1, NUMINT
          NDBI=NODINT(IQ)
          NDB=ICONV(NDBI)
          CZR0(1)=GEOM(3,2,NDBI)
          CZR0(2)=SQRT(GEOM(1,2,NDBI)**2+GEOM(2,2,NDBI)**2)
C
C           Find maximum distance of initial boundary to the
C           Initial BC nodes (Note: they may not coinside)
C
          DISINT=10E5
          DO 91 IBD=1, 27 
          IBD1=IBD
          IBD2=IBD+1
          CALL PLDIS2(CZR0,ZR(1,IBD1,NENV),ZR(1,IBD2,NENV),DISS)
          IF(DISS.LT.DISINT) THEN
            DISINT=DISS
          ENDIF
91        CONTINUE
          IF(DISINT.GT.DISMAX) THEN
            DISMAX=DISINT
          ENDIF
92      CONTINUE
        DISMAX=DISMAX*1.01
C
C         Compute the current conductances
C
C        DO 100 J=1,NOCON
C          TAVG=(T(ICNDND(1,J))+T(ICNDND(2,J)))/2
C          IF(TAVG.LT.0) TAVG=0
C          CALL TINT(TAVG,CONDX,101)
C          CALL TINT(TAVG,CONDZ,102)
C          GG(J)=R(J)/(CONDX*THETA(2,J)+CONDZ*THETA(1,J)) 
C100      CONTINUE
C
         KINIT=1
         GOTO 1000 
       ENDIF
C
C      -----------------
C       Establish new BC
C      -----------------
C
      IF(TIME.GT.42.0) GOTO 500
      IF(NENV.EQ.1.OR.(TIME.GT.ENVTIME(NENV+1).AND.KODE.EQ.1)) THEN
C
C       All calculation is based on previous temperatures
C       Clean out sink node indicate array
C
        DO 114 IQ=1, LIMND
          TOLD(IQ)=T(IQ)
          ISINK(IQ)=.FALSE.
114     CONTINUE
C
        IF(IDEBUG.GT.0) THEN
           PRINT *,' '
           PRINT *,'INTEGRATION TIME=',TIME
        ENDIF
        NENV=NENV+1
C
C         process initial boundary 
C
        DO 115 IQ=1, NUMINT
          NDBI=NODINT(IQ)
          NDB=ICONV(NDBI)
          CZR0(1)=GEOM(3,2,NDBI)
          CZR0(2)=SQRT(GEOM(1,2,NDBI)**2+GEOM(2,2,NDBI)**2)
C
C           Find closest boundary segment and assign temperature
C           If the distance is greater then DISMAX,ignor
C
          DISINT=10E5
          DO 177 IBD=1, 27 
          IBD1=IBD
          IBD2=IBD+1
          CALL PLDIS2(CZR0,ZR(1,IBD1,NENV),ZR(1,IBD2,NENV),DISS)
          IF(DISS.LT.DISINT) THEN
            IBDINT1=IBD1
            IBDINT2=IBD2
            DISINT=DISS
          ENDIF
177       CONTINUE
          IF(DISINT.LE.DISMAX) THEN
          T(NDBI)=(TSURF(IBDINT1,NENV)+TSURF(IBDINT2,NENV))/2.0
          TNEW(NDBI)=T(NDBI)
          C(NDBI)=-1.0
          ISINK(NDBI)=.TRUE.
          IF(IDEBUG.GT.1) THEN
            PRINT *, 'INIT BD NODE=',NDB,' T=',T(NDBI)
          ENDIF
          ENDIF
115     CONTINUE
        IF(NENV.EQ.2) GOTO 500
C
        DO 200 INODE=1,NUMABL
          ND0I=NODABL(INODE)
          ND0=ICONV(NODABL(INODE))
          IF(IDEBUG.GT.2) PRINT *, 'FOR NODE',ND0
C
C         Calculate the Z&R of the 4 node centers
C
          CZR(1,4)=GEOM(3,2,ND0I)
          CZR(2,4)=SQRT(GEOM(1,2,ND0I)**2+GEOM(2,2,ND0I)**2)
          TN(4)=TOLD(ND0I)
          IND(4)=ND0I
          DO 160 IQ=1, 3
            ND=ICONV(NABLBND(IQ,ND0I))
            NDI=NABLBND(IQ,ND0I)
            CZR(1,IQ)=GEOM(3,2,NDI)
            CZR(2,IQ)=SQRT(GEOM(1,2,NDI)**2+GEOM(2,2,NDI)**2)
            TN(IQ)=TOLD(NDI)
            IND(IQ)=NDI
C           PRINT *,'CZR=',ND,CZR(1,IQ),CZR(2,IQ),GEOM(1,2,NDI),
C    +              GEOM(2,2,NDI),GEOM(3,2,NDI)
160       CONTINUE
C
C         Calculate Z&R of the first three grids of triangle node
C
          DO 170 IQ=1, 3
            IGCUT(IQ)=0
            NG=NDGRID(IQ,ND0I)
            GRIDZR(1,IQ)=GRID(3,NG)
            GRIDZR(2,IQ)=SQRT(GRID(1,NG)**2+GRID(2,NG)**2)
170       CONTINUE
C
C         Test the if edges of the triangle node intersect
C         the new boundary.
C
          ICUTCNT=0
          DO 180 IBD=1, 27 
            IBD1=IBD
            IBD2=IBD+1
C
C           The three 2-grids may coincide with the boundary
C
            DO 175 IQ=1, 3
             CALL PLDIS2(CZR(1,IQ),ZR(1,IBD1,NENV),ZR(1,IBD2,NENV),DISS)
              IF(DISS.LE.DISMAX) THEN
                TBB=(TSURF(IBD1,NENV)+TSURF(IBD2,NENV))/2.0
                NDI=NABLBND(IQ,ND0I)
                T(NDI)=TBB
                C(NDI)=-1.0
                ISINK(NDI)=.TRUE.
                TNEW(NDI)=T(NDI)
                IF(IDEBUG.GT.1) THEN
                PRINT *, 'COINCIDE NODE',ICONV(NDI),' T=',T(NDI)
                ENDIF
              ENDIF
175         CONTINUE
            CALL TESTCUT(ZR(1,IBD1,NENV),ZR(1,IBD2,NENV),
     +              GRIDZR(1,1),GRIDZR(1,2),P5,IRET)
            IF(IRET.EQ.1) IGCUT(1)=1
            IF(IRET.EQ.2) IGCUT(1)=2
            IF(IRET.NE.0) THEN
              ICUTCNT=ICUTCNT+1
              CUTZR(1,ICUTCNT)=P5(1)
              CUTZR(2,ICUTCNT)=P5(2)
              TB(ICUTCNT)=(TSURF(IBD1,NENV)+TSURF(IBD2,NENV))/2.0
              IBDCUT1=IBD1
              IBDCUT2=IBD2
              IF(IDEBUG.GT.2) THEN
              PRINT *,'ZR=',ZR(1,IBD1,NENV),ZR(2,IBD1,NENV)
     +                     ,ZR(1,IBD2,NENV),ZR(2,IBD2,NENV)
              PRINT *, 'CUT NODE=',ND0,' GRIDS=1-2 at ',P5(1),P5(2)
              PRINT *, 'TB=',TB(ICUTCNT),ICUTCNT 
              ENDIF
            ENDIF
            CALL TESTCUT(ZR(1,IBD1,NENV),ZR(1,IBD2,NENV),
     +              GRIDZR(1,2),GRIDZR(1,3),P5,IRET)
            IF(IRET.EQ.1) IGCUT(2)=2
            IF(IRET.EQ.2) IGCUT(2)=3
            IF(IRET.NE.0) THEN
              ICUTCNT=ICUTCNT+1
              CUTZR(1,ICUTCNT)=P5(1)
              CUTZR(2,ICUTCNT)=P5(2)
              TB(ICUTCNT)=(TSURF(IBD1,NENV)+TSURF(IBD2,NENV))/2.0
              IBDCUT1=IBD1
              IBDCUT2=IBD2
              IF(IDEBUG.GT.2) THEN
              PRINT *,'ZR=',ZR(1,IBD1,NENV),ZR(2,IBD1,NENV)
     +                     ,ZR(1,IBD2,NENV),ZR(2,IBD2,NENV)
              PRINT *, 'CUT NODE=',ND0,' GRIDS=2-3 at ',P5(1),P5(2)
              PRINT *, 'TB=',TB(ICUTCNT),ICUTCNT 
              ENDIF
            ENDIF
            CALL TESTCUT(ZR(1,IBD1,NENV),ZR(1,IBD2,NENV),
     +              GRIDZR(1,3),GRIDZR(1,1),P5,IRET)
            IF(IRET.EQ.1) IGCUT(3)=3
            IF(IRET.EQ.2) IGCUT(3)=1
            IF(IRET.NE.0) THEN
              ICUTCNT=ICUTCNT+1
              CUTZR(1,ICUTCNT)=P5(1)
              CUTZR(2,ICUTCNT)=P5(2)
              TB(ICUTCNT)=(TSURF(IBD1,NENV)+TSURF(IBD2,NENV))/2.0
              IBDCUT1=IBD1
              IBDCUT2=IBD2
              IF(IDEBUG.GT.2) THEN
              PRINT *,'ZR=',ZR(1,IBD1,NENV),ZR(2,IBD1,NENV)
     +                     ,ZR(1,IBD2,NENV),ZR(2,IBD2,NENV)
              PRINT *, 'CUT NODE=',ND0,' GRIDS=3-1 at ',P5(1),P5(2)
              PRINT *, 'TB=',TB(ICUTCNT),ICUTCNT 
              ENDIF
            ENDIF
180       CONTINUE
          IF (ICUTCNT.EQ.3) THEN
            PRINT *, '**ERROR** CALCULATION ERROR #1 IN USER1'
            PRINT *, '          NODE NUMBER = ',ND0
            GOTO 1000
          ENDIF
C
C           If It only touches one grid
C
          IF (ICUTCNT.EQ.1) THEN
            CUTZR(1,1)=ZR(1,IBDCUT1,NENV)
            CUTZR(2,1)=ZR(2,IBDCUT1,NENV)
            CUTZR(1,2)=ZR(1,IBDCUT2,NENV)
            CUTZR(2,2)=ZR(2,IBDCUT2,NENV)
          ENDIF
C
C         Test if the triangle node center is outside or inside
C
C         ICENOUT=0
C         IF(ICUTCNT.NE.0) THEN
C           CALL CHKATCH2(CZR0,ZR(1,IBD1,NENV),ZR(1,IBD2,NENV),ICODE)
C           IF (ICODE.EQ.1.OR.ICODE.EQ.0) then
C             ICENOUT=1
C           ENDIF
C         ENDIF
C
C           If the node don't intersect with new boundary, skip
C
          IF (ICUTCNT.EQ.0) GOTO 200
C
C           If the two cutting points are too close
C
          DZZ=CUTZR(1,1)-CUTZR(1,2)
          DRR=CUTZR(2,1)-CUTZR(2,2)
          DIS2CUT=SQRT(DZZ*DZZ+DRR*DRR)
          IF(DIS2CUT.LT.0.005) THEN
            CUTZR(1,1)=ZR(1,IBDCUT1,NENV)
            CUTZR(2,1)=ZR(2,IBDCUT1,NENV)
            CUTZR(1,2)=ZR(1,IBDCUT2,NENV)
            CUTZR(2,2)=ZR(2,IBDCUT2,NENV)
          ENDIF
C
C           Determine the perpendicular vector of the boundary line
C           if it intersect the node.
C
          CALL LINENORM(RNORM,CUTZR(1,1),CUTZR(1,2))  
C
C           Determine the temperature gredient along the perpendicular
C           of the new boundary from the three surface coated nodes
C
C         CALL DTPLINE(DTEMP1,RNORM,TN,CZR)
C
C         Determine which node is closest to the  
C         boundary, and apply the temperature BC. 
c
          TBAVG=(TB(1)+TB(2))/2.0
          DSM=10E5
          DO 220 IQ=1, 4
C           CALL CHKATCH2(CZR(1,IQ),CUTZR(1,1),CUTZR(1,2),ICODE)
C           IF (ICODE.LT.0) GOTO 220
            CALL PLDIS2(CZR(1,IQ),CUTZR(1,1),CUTZR(1,2),DIS(IQ))
            IF(DIS(IQ).LT.DSM) THEN
              DSM=DIS(IQ)
              NIQ=IQ
            ENDIF
220       CONTINUE
          NDM=IND(NIQ)
          IF(DSM.LT.0.005) THEN
             DTEMP=0.0
             GOTO 290
          ENDIF
C
C         Determine the temperature gredient from old temp field.
C
          DIS2INT=10E5
          NP=NENV-1
          DO 230 IQ=1, 27
           IBD1=IQ
           IBD2=IQ+1
         CALL PLDIS2(CZR(1,NIQ),ZR(1,IBD1,NP),ZR(1,IBD2,NP),DISS)
         IF(DISS.LT.DIS2INT) THEN
            IBD1S=IBD1
            IBD2S=IBD2
            DIS2INT=DISS
         ENDIF
230        CONTINUE 
          CALL DTPLINE2(DTEMP,RNORM,TOLD(NDM),CZR(1,NDM),
     +      TSURF(IBD1S,NP),ZR(1,IBD1S,NP),
     +      TSURF(IBD2S,NP),ZR(1,IBD2S,NP))
C
290       CONTINUE
C
C         IF DTEMP is too large, the node is too far from original
C         boudary, then use DTEMP1 which is determined from neighbing
C         nodes.
C
C         IF(ABS(DTEMP1).LT.ABS(DTEMP)) DTEMP=DTEMP1
C         T(NDM)=DTEMP*DSM+TBAVG
          T(NDM)=TBAVG
          C(NDM)=-1.0
          TNEW(NDM)=T(NDM)
          ISINK(NDM)=.TRUE.
          IF(IDEBUG.GT.0) THEN
          PRINT *, 'NODES=',(ICONV(IND(IQ)),IQ=1,4),' SINK=',ICONV(NDM)
          PRINT *, 'RNORM=', RNORM(1),RNORM(2), ' DTEMP=', DTEMP
          PRINT *, 'DIS=',(DIS(IQ),IQ=1,4)
          PRINT *, 'TEMPS=',(T(IND(IQ)),IQ=1,4)
          ENDIF
200     CONTINUE
      ENDIF
C
C     -----For every iteration-------
C
500   CONTINUE
      IF (KODE.EQ.1) THEN
C
       IF(IDEBUG.GT.4) THEN
         PRINT *, ' '
         PRINT *, ' CONDUCTANCE CALCULATION '
         PRINT *, ' '
       ENDIF
C
C       Compute the current conductances
C
        DO 300 J=1,NOCON
          K1I=ICNDND(1,J)
          K2I=ICNDND(2,J)
          TAVG=(T(K1I)+T(K2I))/2
          IF(TAVG.LT.0) TAVG=0
          CALL TINT(TAVG,CONDX,101)
          CALL TINT(TAVG,CONDZ,102)
          GG(J)=R(J)/(CONDX*THETA(2,J)+CONDZ*THETA(1,J)) 
          IF(IDEBUG.GT.4) THEN
            PRINT *,J,ICONV(K1I),ICONV(K2I),TAVG,
     +              T(ICNDND(1,J)),T(ICNDND(2,J))
            PRINT *,GG(J),R(J),CONDX,CONDZ,THETA(2,J),THETA(1,J)
           ENDIF
300     CONTINUE
      ENDIF
      IF(KODE.EQ.1.OR.KODE.EQ.2) THEN
        DO 310 IQ=1, LIMND
         IF(IDEBUG.GT.4.AND.ISINK(IQ)) THEN
           PRINT *,'SINK NODE=',ICONV(IQ), C(IQ)
         ENDIF
         IF(ISINK(IQ)) THEN
            C(IQ)=-1.0
            T(IQ)=TNEW(IQ)
         ENDIF 
310     CONTINUE
      ENDIF
1000  CONTINUE
      RETURN
      END
C     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      SUBROUTINE TESTCUT(P1,P2,P3,P4,P5,IRET)
      DIMENSION P1(2),P2(2),P3(2),P4(2),P5(2)
C
C     Check it the two lines formed by p1-p2 and p3-p4 intersect,
C     If do and P1 is inside the boundary envolop, return 1,
C     if P2 is inside the boundary envolop, return 2
C     if the two lines coincide, return 3
C     if the two lines do not intersect, return 0
C  
      LOGICAL LINEVERT(2)
C     --------------------------------------------
      LINEVERT(1)=.FALSE.
      LINEVERT(2)=.FALSE.
      TOL=1.0E-6
      IRET=0
C
C       First test whether the two lines are vertical
C
      IF (ABS(P1(1)-P2(1)).LT.TOL) LINEVERT(1)=.TRUE.
      IF (ABS(P3(1)-P4(1)).LT.TOL) LINEVERT(2)=.TRUE.
C
      IF (LINEVERT(1)) THEN
        P5(1)=(P1(1)+P2(1))/2.0
        IF (LINEVERT(2)) THEN
C
C           Both lines are vertical, coincide too?
C
          IF(ABS((P3(1)+P4(1))/2.0-P5(1)).LT.TOL) THEN
            IRET=3
          ELSE
             IRET=0
          ENDIF
          GOTO 1000 
        ELSE
          P5(2)=(P4(2)-P3(2))/(P4(1)-P3(1))*(P5(1)-P3(1))+P3(2)
        ENDIF
      ELSE IF(LINEVERT(2)) THEN
        P5(1)=(P3(1)+P4(1))/2.0
        P5(2)=(P2(2)-P1(2))/(P2(1)-P1(1))*(P5(1)-P1(1))+P1(2)
      ELSE
        A1=(P2(2)-P1(2))/(P2(1)-P1(1))
        B1=P1(2)-P1(1)*A1
        A2=(P4(2)-P3(2))/(P4(1)-P3(1))
        B2=P3(2)-P3(1)*A2
        IF(ABS(A1-A2).LT.TOL) THEN
          IF(ABS(B1-B2).LT.TOL) THEN
            IRET=3
          ELSE
            IRET=0
          ENDIF
          GOTO 1000
        ENDIF
        P5(1)=(B2-B1)/(A1-A2)
        P5(2)=A1*P5(1)+B1
      ENDIF
C
C     Now find wether the intersection is on the extension of the
C     two lines.
C
      IF ((P5(1).GT.P1(1).AND.P5(1).GT.P2(1)).OR.
     +    (P5(1).LT.P1(1).AND.P5(1).LT.P2(1))) THEN    
          IRET=0
          GOTO 1000
      ELSE IF((P5(1).GT.P3(1).AND.P5(1).GT.P4(1)).OR.
     +    (P5(1).LT.P3(1).AND.P5(1).LT.P4(1))) THEN    
          IRET=0
          GOTO 1000
      ENDIF
C
C     Now the two line intersect, determine which point
C     is inside and which is outside	
C
      CALL CHKATCH2(P3,P1,P2,ICODE1)
      CALL CHKATCH2(P4,P1,P2,ICODE2)
      IF (ICODE1.EQ.-1) THEN
        IRET=1
      ELSE IF (ICODE2.EQ.-1) THEN
        IRET=2
      ELSE 
        IRET=0
      ENDIF
1000  CONTINUE
      RETURN
      END
C     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      SUBROUTINE CHKATCH2(PT1,PT2,PT3,ICODE)
      DIMENSION PT1(2),PT2(2),PT3(2)
C
C     Determine whether PT2, PT1, PT3 form a counterclockwise
C     triangle
C
C     icode=-1  PT1 is outside
C     icode=1   PT1 is inside
C     icode=0   three point in one line
C
      AA = PT2(1)*PT1(2)+PT2(2)*PT3(1)+PT3(2)*PT1(1)-PT1(2)*PT3(1)
     +       -PT2(2)*PT1(1)-PT2(1)*PT3(2)
      IF(AA.GT.0) THEN
        ICODE=1
      ELSE IF (AA.LT.0) THEN
        ICODE=-1
      ELSE
        ICODE=0
      ENDIF
      RETURN
      END
C     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      SUBROUTINE LINENORM(RNORM,PT1,PT2)  
      DIMENSION RNORM(2),PT1(2),PT2(2)
C
C     perpendicular normal of a line segment formed by PT1 and PT2
C
      TOL=1.0E-6
      A=PT2(2)-PT1(2)
      B=PT1(1)-PT2(1)
      C=PT1(2)*(PT2(1)-PT2(1))-PT1(1)*(PT2(2)-PT1(2))
      D=SQRT(A*A+B*B)
      IF (ABS(C).LT.TOL.AND.B.LT.0) THEN
        D=-1.0
      ELSE IF(C.GT.0) THEN
        D=-1.0*D
      ENDIF 
      RNORM(1)=A/D
      RNORM(2)=B/D
      RETURN
      END
C     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      SUBROUTINE DTPLINE2(DTEMP,RNORM,T1,ZR1,T2,ZR2,T3,ZR3)
      DIMENSION RNORM(2),ZR1(2),ZR2(2),ZR3(2)
C
C       Determine temperture gradient of a node in RNORM direction.
C       If the distance is less thena 0.005 inches, assume DTEMP=0
C
	CALL PLDIS2(ZR1,ZR2,ZR3,DIS)
	IF(DIS.LT.0.005) THEN
          DTEMP=0
          GOTO 100
        ENDIF
        V1=ZR2(1)-ZR1(1)
        V2=ZR2(2)-ZR1(2)
        DIS=SQRT(V1*V1+V2*V2)
        IF(DIS.LT.0.005) THEN
          DTEMP=0
          GOTO 100
        ENDIF
        V1=V1/DIS
        V2=V2/DIS
        COSVR=V1*RNORM(1)+V2*RNORM(2)
        DTT=(T2-T1)/DIS*COSVR
        V1=ZR3(1)-ZR1(1)
        V2=ZR3(2)-ZR1(2)
        DIS=SQRT(V1*V1+V2*V2)
        IF(DIS.LT.0.005) THEN
          DTEMP=0
          GOTO 100
        ENDIF
        V1=V1/DIS
        V2=V2/DIS
        COSVR=V1*RNORM(1)+V2*RNORM(2)
        DTEMP=DTT+(T3-T1)/DIS*COSVR
100    CONTINUE
       RETURN
       END
C     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      SUBROUTINE DTPLINE(DTEMP,RNORM,TN,CZR)
      DIMENSION RNORM(2),CZR(2,4),TN(4)
C
C       Determine temperture gradient of a node in RNORM direction.
C
      DTT=0
      DTEMP=0
      DO 10 I=1, 2
        I1=I
        I2=I+1
        IF(I2.GT.3) I2=1
        V1=CZR(1,I2)-CZR(1,I1)
        V2=CZR(2,I2)-CZR(2,I1)
        DIS=SQRT(V1*V1+V2*V2)
        IF(DIS.LT.0.005) THEN
          DTEMP=0
          GOTO 100
        ENDIF
        DTT=(TN(I2)-TN(I1))/DIS
        V1=V1/DIS
        V2=V2/DIS
        COSVR=V1*RNORM(1)+V2*RNORM(2)
        DTEMP=DTEMP+DTT*COSVR
C       PRINT *,'V=',V1,V2,DIS,CZR(1,I),CZR(2,I),CZR0(1),CZR0(2)
10    CONTINUE
100   CONTINUE
      RETURN
      END
C     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      SUBROUTINE PLDIS2 (PT1,PT2,PT3,DIS)
      DIMENSION PT1(2), PT2(2), PT3(2)
C
C     the distance of pt1 from line formed by pt2 and pt3.
C
C     output:
C        dis    = return distance
C               = 0 the 3 points fall into one line
C               < 0 error
C     ..........................................................
      TOL=1E-6
      A=PT2(2)-PT3(2)
      B=PT3(1)-PT2(1)
      C=PT2(1)*(PT3(2)-PT2(2))-PT2(2)*(PT3(1)-PT2(1))
      DD=PT1(1)*A+PT1(2)*B+C
      IF(DD.LT.0) DD=-DD
      BB=SQRT(A*A+B*B)
      IF(BB.LT.TOL) THEN
        DIS=0
      ELSE
        DIS=DD/BB
      END IF
      RETURN
      END
