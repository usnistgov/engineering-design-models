      SUBROUTINE USER1(GG,T,C,Q,QD,R,TIME,DT,IT,KODE,NOCON,MAXNO,
     +ICONV,DUM1,DUM2,DTP,TF)
      DIMENSION GG(1),QD(1),T(1),C(1),Q(1),R(1),ICONV(1)
      REAL ORBSTRT,PERIOD,TDORBIT,TEMPINI(40000),TEMPF1(40000)
C
C     This routine checks for temperature convergence from one orbit to
C     the next.  If convergence is achieved, the transient analysis is
C     terminated.
C
C     To use this routine, the user must define 2 variables from within
C     I-DEAS TMG.  Select Variables, Modify... from the Additional Model Data
C     menu, and define:
C
C         TMGVAR0       Orbital Period
C         TMGVAR1       Convergence Criteria
C
C     The convergence criteria is the maximum element temperature difference.
C
      SAVE
C
      IF (KODE.EQ.1.AND.IFLAG.NE.999) THEN
	 ORBSTRT=TIME
         NORB=0
	 CALL VARVAL('%TMGVAR0',PERIOD)
	 CALL VARVAL('%TMGVAR1',TDORBIT)
         DO 5 I=1,MAXNO
	   TEMPINI(I)=T(I)
 5       CONTINUE
	 IFLAG=999
      ENDIF
C
      IF (KODE.EQ.2.AND.IORBEND.EQ.999) THEN
        TDOMAX=0
        NORB=NORB+1
	FDT=(ORBSTRT+PERIOD-TIMEF1)/(TIME-TIMEF1)
	DO 15 I=1,MAXNO
          TEMPFIN=TEMPF1(I)+FDT*(T(I)-TEMPF1(I))
          DIFF=TEMPFIN-TEMPINI(I)
	  IF (DIFF.GT.TDOMAX) TDOMAX=DIFF
	  TEMPINI(I)=TEMPFIN
 15     CONTINUE
	ORBSTRT=ORBSTRT+PERIOD
        IF (TDOMAX.LE.TDORBIT) TF=ORBSTRT
        IORBEND=0
      ENDIF
C
      TIMNEXT=TIME-ORBSTRT+DT
      IF (KODE.EQ.2.AND.TIMNEXT.GE.PERIOD) THEN
           DO 10 I=1,MAXNO
             TEMPF1(I)=T(I)
 10        CONTINUE
           TIMEF1=TIME
           IORBEND=999
      ENDIF
C
      IF (KODE.EQ.3) THEN
        WRITE(17,20) NORB,TDOMAX
 20     FORMAT(1X,/,'CONVERGENCE ACHIEVED AFTER ',I3,' ORBITS',/
     +'MAXIMUM ELEMENT TEMPERATURE DIFFERENCE = ',E10.3,/)
      ENDIF
C
      RETURN
      END
