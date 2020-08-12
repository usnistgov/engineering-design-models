      SUBROUTINE USER1(GG,T,C,Q,QD,R,TIME,DT,IT,KODE,NOCON,MAXNO,
     +ICONV,DUM1,DUM2,DTP,TF)
      DIMENSION GG(1),QD(1),T(1),C(1),Q(1),R(1),ICONV(1)
      INTEGER ESCOND(4,100000),EFFSINK(1000),ESEXCLU(1000)
      INTEGER ESCONN(1000,100,2),ESNRK(1000)
      REAL ESRSLT(500,1000,3)
      REAL ESRADK(1000,100),RADKSUM(1000),TIMPTS(500),DTPO,DTPT
      COMMON/GRAV/GRAV,GV(3),TABS,RGAS,PSTD,TSTD,SIGMA
C
      SAVE
C
C     The routine calculates an effective radiative sink temperature and 
C     equivalent radiative coupling for selected elements over a transient 
C     solution.    
C
C     Initialize
C
      IF (IFLAG.NE.-999) THEN
        CALL VARVAL('%TMGVAR0',DTPO)
        DTPT=-DTPO
        NTMPTS=0
        CALL TCNAME('EFFSINK','*',ESCOND,NESCOND)
        CALL NAMAR('EFFSINK',EFFSINK,NES)
        CALL NAMAR('ESEXCLU',ESEXCLU,NEX)        
        DO 10 I=1,NES
          RADKSUM(I)=0
          K=EFFSINK(I)
          IG=0
          DO 20 J=1,NESCOND
            IF (ESCOND(2,J).EQ.K.AND.ESCOND(4,J).EQ.1) THEN
              IEXCL=0
              DO 30 L=1,NEX
                IF (ESCOND(3,J).EQ.ESEXCLU(L)) THEN
                  IEXCL=-999
                ENDIF
 30           CONTINUE
              IF (IEXCL.NE.-999) THEN
                IG=IG+1
                RADK=R(ESCOND(1,J))/SIGMA 
                RADKSUM(I)=RADKSUM(I)+RADK
                ESCONN(I,IG,1)=ESCOND(1,J)
                ESCONN(I,IG,2)=ESCOND(3,J)
                ESRADK(I,IG)=RADK
              ENDIF                  
            ENDIF
 20       CONTINUE
          ESNRK(I)=IG         
 10     CONTINUE 
        IFLAG=-999
      ENDIF 
C
C     Compute the effective radiative sink temperatures and RadK's.
C
      IF (KODE.EQ.1.AND.(TIME-DTPT).GE.DTPO) THEN
	DTPT=TIME
        NTMPTS=NTMPTS+1
        TIMPTS(NTMPTS)=TIME
        DO 50 I=1,NES
          TFSUM=0
          QRAD=0
          DO 60 J=1,ESNRK(I)
            TFSUM=TFSUM+ESRADK(I,J)*(T(ESCONN(I,J,2))+TABS)**4
            QRAD=QRAD+(T(ESCONN(I,J,2))-T(EFFSINK(I)))/
     +            GG(ESCONN(I,J,1))              
 60       CONTINUE 
	  ESRSLT(NTMPTS,I,1)=T(EFFSINK(I))
          ESRSLT(NTMPTS,I,2)=(TFSUM/RADKSUM(I))**0.25-TABS
          ESRSLT(NTMPTS,I,3)=QRAD
 50     CONTINUE         
      ENDIF
C
C     Output the results.
C
      IF (KODE.EQ.3) THEN
        OPEN(UNIT=20,FILE='effsink.dat',STATUS='NEW')
        DO 80 I=1,NES
          WRITE(20,105) EFFSINK(I),RADKSUM(I)
 105      FORMAT(//,2X,'ELEM NO.:',2X,I6,/,2X,'SCRIPT-F:',2X,F8.6,/,
     +    8X,'TIME',8X,'TEMP',6X,'TEQUIV',6X,'QRAD',/,50('-'),/)
          DO 90 J=1,NTMPTS  
            WRITE(20,110) TIMPTS(J),ESRSLT(J,I,1),ESRSLT(J,I,2),
     +                     ESRSLT(J,I,3)
 110        FORMAT(4X,F9.2,6X,F7.3,6X,F7.3,4X,F8.4)
  90      CONTINUE
  80    CONTINUE
      ENDIF
C         
      RETURN
      END 
        
