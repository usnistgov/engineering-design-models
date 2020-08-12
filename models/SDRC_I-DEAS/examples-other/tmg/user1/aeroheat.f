      SUBROUTINE USER1(GG,T,C,Q,QD,R,TIME,DT,IT,KODE,NOCON,MAXNO,
     +ICONV,DUM1,DUM2,DTP,TF)
      DIMENSION GG(1),QD(1),T(1),C(1),Q(1),R(1),ICONV(1)
      INTEGER EXTSURF(2000),NTIM,TABNUM
      REAL TIMPTS(100),AR,E,TSA,VF,TT,DD,TTPREV
      REAL QSURF(100,2000),QAERO
      CHARACTER*3 MNM
      CHARACTER*7 NAME
      CHARACTER*120 LINE 
      SAVE KINIT
C
C    This routine reads solar view factors from VUFF and creates 
C    corresponding heat load versus time tables for inclusion
C    in a subsequent run.  It was developed to enable the solar
C    view factor calculations to be used for simulation of
C    aeroheating effects.
C
C    The ambient heat flux density must be defined as a variable from within
C    I-DEAS TMG.  Select Variables, Modify... from the Additional Model Data
C    menu, and define the value of TMGVAR0 to be the ambient flux.
C
C
      IF (KINIT.NE.999) THEN
         KINIT=999
         CALL NAMAR('EXTSURF',EXTSURF,NXTSURF)
         CALL VARVAL('%TMGVAR0',QAERO)
         TTPREV=-12345
         NTIM=0
	 REWIND 8 
  5      CONTINUE        
	   READ(UNIT=8,FMT=115,END=10) LINE
 115       FORMAT(A120)
	   IF (LINE(1:3).EQ.'SVF') THEN
             READ(LINE(1:80),FMT=105) MNM,II,JJ,AR,E,TSA,VF,TT,DD
 105         FORMAT(A3,2I6,3E11.4,F11.7,3E11.4)
             IF(TT.NE.TTPREV) THEN
               NTIM=NTIM+1
               TIMPTS(NTIM)=TT
               TTPREV=TT
               DO 30 I=1,NXTSURF
                 QSURF(NTIM,I)=0
 30            CONTINUE
             ENDIF
             DO 15 I=1,NXTSURF
               IF (II.EQ.ICONV(EXTSURF(I))) THEN
                 QSURF(NTIM,I)=QAERO*AR*VF
               ENDIF
 15          CONTINUE
	   ENDIF
           GOTO 5
 10      CONTINUE
         OPEN (UNIT=20,FILE='aeroflux.tmi',STATUS='NEW')
         DO 20 I=1,NXTSURF
           TABNUM=100+I
           K=ICONV(EXTSURF(I))
           WRITE(20,*) 'TABTYPE  ',TABNUM,'  QNODE TIME'
           WRITE(20,*) 'INTERP  ',K,'  0  ',TABNUM
           DO 25 J=1,NTIM
             WRITE(20,*) 'TABDATA  ',TABNUM,QSURF(J,I),TIMPTS(J)
  25       CONTINUE
  20     CONTINUE            
      ENDIF
C
      RETURN
      END
