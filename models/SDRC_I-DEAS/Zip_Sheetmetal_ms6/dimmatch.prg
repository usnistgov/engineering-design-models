C : ******** DIMENSION MATCHING PROGRAM FOR MASTER SERIES 2.0 ***************
C : *********** CREATED BY GREGORY RYAN AT EXABYTE - JUN 1995 ***************
C : modified to hide slave dimensions - R. Dickerson
K : #ECHO NONE
K : $ / DES
K : FIL
K :  Pm 1;
K :  Po
K : #input "PICK THE DRIVING DIMENSION THEN <CR>" dum
K : /mo e #dump canc
K : DES
K : #DRIVE = z_str(1)
C :
K : #input "PICK DIMENSIONS TO MATCH DRIVING DIM THEN <CR>" dum
C :
K : NOCOMMAND
K : /mo e
C :
K : #LOOPER = 1
K : #LOOPTOP:
K : #IF (Z_ERROR NE 0) THEN GOTO S2
K :  V LOOPER;
K : #IF (Z_ERROR NE 0) THEN GOTO S2
K :  EQ DRIVE
K : #IF (Z_ERROR NE 0) THEN GOTO S2
K : #LOOPER = LOOPER+1
K : #GOTO LOOPTOP
K : #S2:
C :
K : DONE
K : OKAY
K : $
K : $
C :
K : FIL
K :  An
K :  Mr
K : OKAY
K : /DO HI
K : DES
E : **** END OF SESSION ****
