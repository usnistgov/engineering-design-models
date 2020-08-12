-1
-1
-1
-1
-1
MESH RESET
AREA PHCONT_ 0 0 RBNCONT 0 1 NEARA
-1
-1
-1
-1
      SUBROUTINE USER1(GG,T,C,Q,QD,R,TIME,DT,IT,KODE,NOCON,MAXNO,ICONV,
     +DUM1,DUM2,DTP,TF)
      DIMENSION GG(1),QD(1),T(1),C(1),Q(1),R(1),ICONV(1)
      INTEGER PHCONT(500),RBNCONT(500),RBNSURF(5000),INK(5000)
      INTEGER PRCOND(4,500),INKCOND(4,40000),PHCONN(2,500)
      INTEGER RBNROWS(50,500),RBNCONN(500),RBNCORR(500)
      INTEGER RBNCOND(4,5000),RB(5000),RBNNET(2,500)
      INTEGER CNRBN(40000),RBB(500)
      INTEGER NPH,NRC,NRS,NINK,NCPHRC,NCRBSF,NCINK
      INTEGER CRSS,DIRTRAV,DIRCRSS,TRAV,NROWS,NRSE
      REAL PHC,PHT,RSC,RST,OLDPRNT,DELPRNT,DELTAT
      REAL GEOM(3,4,40000),PROP(10,40000),CRSLOCA,CRSLOCB,DIFF
      REAL DIST,SPEED,EDGE,CONTACT,QDMAX(5000)
      REAL RA(5000),RAA(500),RAMAX,GGX,GSUM,GTSUM
      SAVE
C
C***************************************************************************
C
      IF (IFLAG.NE.999) THEN
        CALL NAMAR ('PHCONT_',PHCONT,NPH)
        CALL NAMAR ('RBNCONT',RBNCONT,NRC)
        CALL NAMAR ('RBNSURF',RBNSURF,NRS)
        CALL NAMAR ('INK____',INK,NINK)
        CALL TCNAME ('PHCONT_','RBNCONT',PRCOND,NCPHRC)
	CALL TCNAME ('RBNSURF','RIBBON_',RBNCOND,NCRBSF)
        CALL TCNAME ('INK____','*',INKCOND,NCINK)
        CALL READPROP (PROP,GEOM,GRID,'Y','Y','N')
C
C Read the following values from the file 'scxpb.dat'.
C
C   DIRTRAV - direction of travel
C   DIRCRSS - cross-axis direction
C   SPEED   - speed of the printer head relative to the ribbon
C   CONTACT - heat transfer coefficient between PHCONT and RBNSURF
C   PHT     - printer head element size along direction of travel
C   RST     - ribbon surface element size along direction of travel
C
        CALL OPENCP('O',20,'scxpb.dat','F','R',IRET,0)
        READ (20,*) SPEED
        READ (20,*) CONTACT
        READ (20,*) TRAV
        READ (20,*) CRSS
        READ (20,*) PHT
        READ (20,*) RST
        DIRTRAV=IABS(TRAV)
        DIRCRSS=IABS(CRSS)
C
C Determine the element sizes in both the direction of travel and
C cross-axis direction for the printer head and ribbon surface elements.
C
        PHC=PROP(1,PHCONT(1))/PHT
        RSC=PROP(1,RBNSURF(1))/RST
C
C Determine the correspondence between the PHCONT elements and the
C RBNCONT elements.
C
        DO 10 I=1,NPH
	  DO 20 J=1,NCPHRC
	    IF (PRCOND(2,J).EQ.PHCONT(I)) THEN
	       PHCONN(1,I)=PRCOND(1,J)
	       PHCONN(2,I)=PRCOND(3,J)	
	    END IF
  20      CONTINUE
  10    CONTINUE	    
C
C Determine the conductances between the RBNSURF elements and the
C RIBBON elements
C
      DO 25 I=1,NRS
        DO 26 J=1,NCRBSF
	  IF (RBNCOND(2,J).EQ.RBNSURF(I)) THEN
	    CNRBN(RBNSURF(I))=RBNCOND(3,J)
            GO TO 26
	  ENDIF
 26     CONTINUE    
 25   CONTINUE
C
C Sort the RBNSURF elements into rows and columns
C
      DO 30 I=1,NRS
        RA(I)=GEOM(DIRCRSS,1,RBNSURF(I))
	RB(I)=RBNSURF(I)
 30   CONTINUE
      CALL SORT(NRS,RA,RB)
      RAMAX=0
      DO 40 I=1,NRS
        RA(I)=GEOM(DIRTRAV,1,RB(I))
	IF(RAMAX.LT.RA(I)) RAMAX=RA(I)
 40   CONTINUE
      NCOLS=(RAMAX+RST)/RST
      NROWS=NRS/NCOLS
      K=1
      DO 50 I=1,NROWS
         DO 60 J=1,NCOLS
	    RAA(J)=RA(K)
	    RBB(J)=RB(K)
	    K=K+1
 60      CONTINUE
         CALL SORT(NCOLS,RAA,RBB)
	 DO 70 J=1,NCOLS
	    RBNROWS(I,J)=RBB(J)
 70      CONTINUE	      
 50   CONTINUE    
C
C Establish correspondence between the RBNCONT elements and the RBNSURF 
C ROWS
C
      DO 80 I=1,NRC
         CRSLOCA=GEOM(DIRCRSS,1,RBNCONT(I))   
         DO 90 J=1,NROWS
	    CRSLOCB=GEOM(DIRCRSS,1,RBNROWS(J,1))
	    DIFF=ABS(CRSLOCA-CRSLOCB)
	    IF (DIFF.LE.(RSC/2)) RBNCONN(I)=J    
  90     CONTINUE
  80  CONTINUE
C
C  Determine the location of the front edge of the ribbon
C
      EDGE=GEOM(DIRTRAV,1,RBNROWS(1,1))-RST/2
C
C Multiply the conductance between PHCONT and RBNCONT by CONTACT.
C
        IF (CONTACT.GT.0) THEN
          CALL CONST_H(NCPHRC,NPH,PHCONT,PRCOND,CONTACT,R,GG)
        ELSE
          CALL VAR_H(NPH,DIRTRAV,PHCONT,GEOM,PHT,CONTACT,TRAV,NCPHRC,
     +      PRCOND,R,GG)
        END IF
C
C Iinitialize for Printing
C
        CALL OPENCP('O',55,'quality.unv','F','D',IRET,0)     	
	OLDPRNT=0
        CALL FORMOUT('Quality','quality',QD,
     +TIME,94,'IDEAS')
C
        IFLAG=999
      END IF
C
C***************************************************************************
C
      IF (KODE.EQ.1) THEN
C
C Find out how far the PHCONT elements have travelled.
C
        IF (TRAV.GT.0) THEN
          DIST=SPEED*TIME
        ELSE
          DIST=-SPEED*TIME
        END IF
C
C Determine which elements on RBNSURF are currently closest to the elements 
C on RBNCONT.  Set the temperatures of the corresponding RBNCONT and 
C RBNSURF elements.
C
      DO 100 I=1,NRC
         EDGEDIS=GEOM(DIRTRAV,1,RBNCONT(I))-EDGE+DIST
	 IF (EDGEDIS.GE.0) THEN
	   COLNUM=EDGEDIS/RST+1
	   K=RBNROWS(RBNCONN(I),COLNUM)
	   T(RBNCONT(I))=T(K)
	   RBNCORR(I)=K
	 ENDIF
 100   CONTINUE	 
C
C Determine which INK elements have changed phase and set the conductances
C associated with those elements to a very small value.
C
        DO 120 I=1,NINK
	  IF (QD(INK(I)).GT.0) THEN
	    IF (QD(INK(I)).LT.QDMAX(I).AND.QDMAX(I).LE.1) THEN
	       QD(INK(I))=QDMAX(I)
	    ELSE
	       QDMAX(I)=QD(INK(I))
	    ENDIF
            DO 110 J=1,NCINK
	      IF (INKCOND(2,J).EQ.INK(I)) THEN
	        IF (QD(INK(I)).EQ.1) THEN
                  GG(INKCOND(1,J))=1.0E+20
		ELSE
		  GG(INKCOND(1,J))=R(INKCOND(1,J))/(1-QD(INK(I)))
		ENDIF  
              ENDIF
 110        CONTINUE
	  ENDIF
 120    CONTINUE
C
      END IF
C
C***************************************************************************
C
      IF (KODE.EQ.2) THEN
C
C Compute and apply the temperatures at the ribbon surface
C
      DO 200 I=1,NRC
        K=RBNCORR(I)
	GGX=GG(PHCONN(1,I))
	IF (GGX.GT.0) THEN
          GSUM=1/GGX
	  GTSUM=T(PHCONT(I))/GGX
	ENDIF
	DO 210 J=1,NRC
	  IF (I.NE.J.AND.RBNCORR(J).EQ.K) THEN
	    GGX=GG(PHCONN(1,J))
	    IF (GGX.GT.0) THEN 
	      GSUM=GSUM+1/GGX
	      GTSUM=GTSUM+T(PHCONT(J))/GGX
	    ENDIF
          ENDIF
 210    CONTINUE
        GGX=GG(NOCOND(ICONV(K),ICONV(CNRBN(K)),0))
        IF (GGX.GT.0) THEN
	  GSUM=GSUM+1/GGX
          GTSUM=GTSUM+T(CNRBN(K))/GGX
	ENDIF
	T(K)=GTSUM/GSUM
	T(RBNCONT(I))=T(K)
 200  CONTINUE
C
C
C Create a universal file to store the quality of the INK elements with
C respect to time
C
	DELPRNT=TIME-OLDPRNT
	IF (DELPRNT.GT.DTP) THEN
	   OLDPRNT=TIME
           CALL FORMOUT('Quality','quality',QD,
     +TIME,94,'IDEAS')
        ENDIF
C
      END IF
C
C***************************************************************************
C
      IF (KODE.EQ.3) THEN
      CALL FORMOUT('Quality','quality',QD,
     +TIME,94,'IDEAS')  
      ENDIF
C                
      RETURN
      END
C
C***************************************************************************
C
      SUBROUTINE SORT(N,RA,RB)
      REAL RA(5000)
      INTEGER RB(5000)
      L=(N/2)+1
      IR=N
 10   CONTINUE
         IF (L.GT.1) THEN
	    L=L-1
	    RRA=RA(L)
	    RRB=RB(L)
	 ELSE
	    RRA=RA(IR)
	    RRB=RB(IR)
	    RA(IR)=RA(1)
	    RB(IR)=RB(1)
	    IR=IR-1
	    IF (IR.EQ.1) THEN
	       RA(1)=RRA
	       RB(1)=RRB
	       RETURN
	    ENDIF
	 ENDIF
	 I=L
	 J=L+L
 20      IF (J.LE.IR) THEN
            IF (J.LT.IR) THEN
	       IF (RA(J).LT.RA(J+1)) J=J+1
	    ENDIF
	    IF (RRA.LT.RA(J)) THEN
	       RA(I)=RA(J)
	       RB(I)=RB(J)
	       I=J
	       J=J+J
	    ELSE
	       J=IR+1
	    ENDIF
	 GO TO 20
	 ENDIF
	 RA(I)=RRA
	 RB(I)=RRB
      GO TO 10
      END
C
C***************************************************************************
C
      SUBROUTINE CONST_H(NCPHRC,NPH,PHCONT,PRCOND,CONTACT,R,GG)
C
        INTEGER NCPHRC,NPH,PHCONT(500),PRCOND(4,500)
        REAL    CONTACT,R(1),GG(1)
C
        DO 20 I=1, NCPHRC
          DO 10 J=1, NPH
            IF (PHCONT(J).EQ.PRCOND(2,I)) THEN
              GG(PRCOND(1,I))=R(PRCOND(1,I))/CONTACT
            END IF
  10      CONTINUE
  20    CONTINUE
      RETURN
      END
C
C***************************************************************************
C
      SUBROUTINE VAR_H(NPH,DIRTRAV,PHCONT,GEOM,PHT,CONTACT,TRAV,NCPHRC,
     +                 PRCOND,R,GG)
C
        INTEGER NPH,DIRTRAV,TABNUM,NCPHRC,TRAV
        INTEGER PHCONT(500),PRCOND(4,500)
        REAL    MIN,MAX,PHT,EDGE1,EDGE2,CONTACT,X,H
        REAL    GEOM(3,4,40000),R(1),GG(1)
C
          I=1
          DO 30 J=2, NPH
            IF (GEOM(DIRTRAV,2,PHCONT(J)) .LT.
     +          GEOM(DIRTRAV,2,PHCONT(I))) THEN
              I=J
              MIN=GEOM(DIRTRAV,2,PHCONT(I))
            END IF
 30       CONTINUE
          EDGE1=MIN-(PHT/2)
C
          K=1
          DO 40 L=2, NPH
            IF (GEOM(DIRTRAV,2,PHCONT(L)) .GT.
     +          GEOM(DIRTRAV,2,PHCONT(K))) THEN
              K=L
              MAX=GEOM(DIRTRAV,2,PHCONT(K))
            END IF
 40       CONTINUE
          EDGE2=MAX+(PHT/2)
C
          TABNUM=ABS(CONTACT)
          DO 60 I=1, NCPHRC
            DO 50 J=1, NPH
              IF (PHCONT(J).EQ.PRCOND(2,I)) THEN
                IF (TRAV.GT.0) THEN
                  X=GEOM(DIRTRAV,2,PHCONT(J))-EDGE1
                  CALL TINT(X,H,TABNUM)
                  GG(PRCOND(1,I))=R(PRCOND(1,I))/H
                ELSE
                  X=EDGE2-GEOM(DIRTRAV,2,PHCONT(J))
                  CALL TINT(X,H,TABNUM)
                  GG(PRCOND(1,I))=R(PRCOND(1,I))/H
                END IF
              END IF
  50        CONTINUE
  60      CONTINUE
      RETURN
      END
C
C***************************************************************************
C
      SUBROUTINE FORMOUT(TITLE,FILEN1,VV,TIME,NDTYPE,KODE)             
      CHARACTER*(*) TITLE,FILEN1,KODE
      DIMENSION VV(*)
C     $Id: ribbon.f,v 1.1 1997/03/24 14:06:42 adam Exp $
      PARAMETER(LIMND=60000)
      PARAMETER(L2=300000)
C     PARAMETER(LIMND=40)
C     PARAMETER(L2=1)
      PARAMETER(LIMHYD=40000)
      PARAMETER(LIMVAR=1000)
      COMMON/CO4/CO4
      CHARACTER*80 A80
      CHARACTER*12 FILES(100)
      CHARACTER*16 FILEN
      COMMON/CONTRL/IOPT(50)
      COMMON/MAXNOQ/MAXN1,MAXN2
      COMMON/ICONV/MAXNOQ,ICONV(2*LIMND)
      COMMON/PARAMS/PARAMS(LIMND)
      SAVE
      DATA FILES/100*'            '/
      DATA NFILES/0/
      DATA ITIMNUM/0/
C     
C     FIRST DETERMINE WHETHER THE KODE IS 'IDEAS' OR 'TEMPF'
C
      IF(KODE.NE.'IDEAS'.AND.KODE.NE.'TEMPF')THEN
        CALL MSG(4910,I1,I2,I3,I4,R1,R2,R3,R4,A1,A2,A3,IA,RA)
        RETURN
      END IF
C
C     FIRST DETERMINE WHETHER THE FILE FILEN HAS MORE THAN 12 CHARACTERS
C
      IF(ISLEN(FILEN1).GT.12)THEN
        CALL MSG(4911,I1,I2,I3,I4,R1,R2,R3,R4,FILEN1,A2,A3,IA,RA)
        RETURN
      END IF     
      FILEN=FILEN1
      IF(IOPT(40).NE.5.AND.KODE.EQ.'IDEAS')THEN
        ILEN=ISLEN(FILEN1) 
        FILEN=FILEN1(1:ILEN)//'.unv'
      END IF
C
C     NEXT, CHECK WHETHER THE FILE HAS BEEN OPENED YET      
C
      NN=NFILES
      IF ( KODE .EQ. 'IDEAS' ) ITIMNUM=ITIMNUM+1
      IF(NN.EQ.0)THEN
        NFILES=1
        NN=1
        CALL OPENCP('O',55,FILEN,'F','A',IRET,0)
        FILES(1)=FILEN
      END IF
      NUMONE=1
      DO 10 IQ=1,NN
      IF(FILEN.EQ.FILES(IQ))THEN
C
C       FILE NAME HAS ALREADY BEEN OPENED, OPEN FOR END OF FILE
C
        CALL OPENCP('O',55,FILEN,'F','A',IRET,0)
        GO TO 20
      ELSE
C
C       FILE HAS NOT YET BEEN OPENED
C
        IF(FILES(IQ+1).EQ.'           ')THEN
          IF(CO4.NE.0.OR.KODE.EQ.'IDEAS')THEN
C
C           FOR STEADY-STATE FILE TEMPF ALWAYS RE-WRITE DATA
C
            NFILES=NFILES+1
            FILES(IQ+1)=FILEN
          END IF
          CALL OPENCP('O',55,FILEN,'F','D',IRET,0)
          GO TO 20
        END IF
      END IF
10    CONTINUE
C
C     NUMBER OF FILE NAMES HAS BEEN EXHAUSTED
C
      CALL MSG(4913,I1,I2,I3,I4,R1,R2,R3,R4,A1,A2,A3,IA,RA)
      RETURN
20    CONTINUE      
      IF(KODE.EQ.'TEMPF')THEN
        I99=-99999
        WRITE(55,1)I99,TIME
1       FORMAT(1P,I7,E15.7)
        DO 25 IQ=1,MAXN1+MAXN2
        IF(VV(IQ).EQ.-1.2E34)GO TO 25
        WRITE(55,1)ICONV(IQ),VV(IQ)
25      CONTINUE
        RETURN
      END IF
C
C     WRITE BLOCK TYPE AND THEN WRITE ID LINES.
C
      II=ISLEN(TITLE)
      IF(II.GT.40)II=40
      WRITE(A80,'(80A1)') (TITLE(IQ:IQ),IQ=1,II)
      WRITE(A80(II+1:II+40),'(A26,1PE14.7)') 
     &     ' DATA FROM TMG, FOR TIME =', TIME
C
C       Level 7
C
      IF ( PARAMS(138) .EQ. 0. ) THEN
        WRITE(55,'(A6)') '    -1'
        WRITE(55,'(A6)') '  2414'
        WRITE(55,'(I10)') ITIMNUM
        WRITE(55,'(A80)') A80
        WRITE(55,'(I10)') 2
        WRITE(55,'(A80)') A80
        WRITE(55,'(A5)') 'NONE '
        WRITE(55,'(A5)') 'NONE '
        WRITE(55,'(A5)') 'NONE '
        WRITE(55,'(A5)') 'NONE '
        MTYPE=2
        NDCHAR=1
        NREAL=2
        ITYPE=4
        NDV=1
        WRITE(55,'(6I10)') MTYPE,ITYPE,NDCHAR,NDTYPE,NREAL,NDV
        WRITE(55,'(8I10)') 0, 0, 0, 0, 0, 0, 0, 0
        WRITE(55,'(8I10)') 0, 0
        WRITE(55,'(1P,6E13.5)') TIME, 0., 0., 0., 0., 0.
        WRITE(55,'(1P,6E13.5)') 0., 0., 0., 0., 0., 0.
C
C       Level 6
C
      ELSE IF ( PARAMS(138) .EQ. 6. ) THEN
        WRITE(55,'(A6)') '    -1'
        WRITE(55,'(A6)') '    56'
        WRITE(55,'(A80)') A80
        WRITE(55,'(A5)') 'NONE '
        WRITE(55,'(A5)') 'NONE '
        WRITE(55,'(A5)') 'NONE '
        WRITE(55,'(A5)') 'NONE '
        MTYPE=2 
        NDCHAR=1
        NREAL=2
        ITYPE=4
        NDV=1                                                          
        WRITE(55,'(6I10)') MTYPE,ITYPE,NDCHAR,NDTYPE,NREAL,NDV   
        IF(ITYPE.EQ.1) THEN 
          WRITE(55,'(3I10)') 1, 1, 1
        ELSE IF(ITYPE.EQ.4) THEN
          WRITE(55,'(4I10)') 2, 1, 1, ITIMNUM
        ENDIF                                                   
        WRITE(55,'(1P,6E13.5)')TIME
      END IF
C
C       Next, write the array V
C     
      DO 30 IQ=1,MAXN1+MAXN2
        IF(VV(IQ).NE.-1.2E34)THEN
          WRITE(55,'(2I10)')ICONV(IQ),NUMONE
          WRITE(55,'(1P,E13.5)')VV(IQ)
        END IF
30    CONTINUE
      WRITE(55,'(''    -1'')')
C
      CLOSE(55)
      RETURN
      END
C
-1
