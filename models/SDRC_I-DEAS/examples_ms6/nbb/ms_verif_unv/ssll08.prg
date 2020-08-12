C : *** AQA VERSION ***
C :
C : *******************************************************************
C :
C :   BS.PRG
C :
C :   Model Solution QA test driver template.  This is used by BS.C to 
C :   generate local version test cases.  The following BS.C commands
C :   are used:
C :
C :   <FIRSTFLAG>      - Flag to denote that this is the frist test 
C :                      in a test suite.
C :   <LASTFLAG>       - Flag to denote that this is the last test
C :                      in a test suite.
C :   <LOGFILE>        - Test log file name.
C :   <BASEFILE>       - Base test name.  Used to read unv and prg files
C :                      and to create zaz and rep files".
C :   <MODEL>          - Name of next model file.
C :   <DRIVER>         - Name of next driver to run
C :   <INSERTFILE>     - BS will insert the program file here.
C :
C :  User setable variables:
C :
C :   DBGON            - Debug flag
C :                      = 0 No debug info is logged
C :                      = 1 Debug info is logged and listed
C :   OUTVAR           - Output file type
C :                      = 0 Don't write any output
C :                      = 1 Write a zaz (universal) file
C :                      = 2 Write a rep (report) file
C :                      = 3 Write both
C :
C : HISTORY
C :
C :   15-Mar-1993   /Julie Sullivan/ Rewrite for level 7 from level 6
C :   23-Mar-1993   /B. Blaine/      Added Functionality and tested 
C :   13-May-1993   /B. Blaine/      Revamped MS AQA for AQA version
C :   14-Jun-1993   /B. Blaine/      added dqstart IDM stuff.
C : 
C : -------------------------------------------------------------------
K : # OUTVAR = 1           
K : # MAXMODES = 0       
C : --------------------------------------------------------------------
K :    SIM 
K :    /TA
K :     BO
K : $ mpos :; /O P
K : R
K : OKAY
K : $return
K : $ mpos :; /O P
K : P 1; ;
K : MN ON
K : T A
K : OKAY
K : P 5 ; ;
K : AD ON 
K : OKAY
K : P 6; ;
K : PR 2
K : OKAY
K : OKAY
K : $ return
K : /xt
K : /O U U SI
C :
C :
C :  START
C :
K : #TESTSYS="I-DEAS 7.0 - Test "
C :
C : --------------------------------------------------------------
C :     RUN TEST CASES   ************** SET VERSION *************
C : --------------------------------------------------------------
C :
K : # PFILE = "ssll08"
K : # PRGFLE = PFILE+".prg"
K : # LOGFLE = PFILE+".log"
K : # ZAZFLE = PFILE+".zaz"
K : # REPFLE = PFILE+".dat"
K : # UNVFLE = PFILE+".unv"
K : # LISFLE = PFILE+".lis"
K : # HYPNAM = PFILE+".mfh"
K : # DUMFLE = TESTSYS+PRGFLE
K : /F I B SI OKAY FIL
K : UNVFLE OKAY
K : $
K : # IF (Z_ERROR NE 0) THEN CANC
K : # IF (Z_ERROR NE 0) THEN GOTO JUMP
K : /TA PO
K : /RES DEL * Y
K : # JUMP:
K : /TA BO
K : SE
K : ST
K : T
K : DEL
K : SE
K : OK
K : CANC
K : /TA MO
C : ----- Begin Program FIle ----
C :   Program File HTPLA01
C : 
K : /ta MO
C : ----- End of Program File ----
K : # PRGEND:
K : #OUTPUT "                         NOW SOLVING TEST PROCEDURE - ",PRGFLE
K : /SO
K :  RTI DUMFLE
K :  HMG FN1 HYPNAM
K :  HMG EHD DH
K :  ! LOF LISFLE
K :  # IF (DBGON EQ 0) THEN GOTO DBG3
C :    ESO ON
K :  # DBG3:
K :  OKAY
K :  OK
K :  OK
K :  OK
K :  OK
C :
C : ------------------------------------------------------------
C :  CHECK WHICH OUTPUT IS DESIRED, AND BRANCH ACCORDINGLY.
C : ------------------------------------------------------------
C :
K : # IF ( OUTVAR EQ 1 ) THEN GOTO ZAZ_OUT
K : # IF ( OUTVAR EQ 2 ) THEN GOTO REP_OUT
K : # IF ( OUTVAR EQ 3 ) THEN GOTO ZAZ_OUT
K : # GOTO END1
C :
C :
C : --------------------------------------------------------------
C :       RUN REPORT.PRG TO CREATE A MST*.REP FILE
C : --------------------------------------------------------------
C :                        
K : # REP_OUT :
C :
C : *************************** REPORT .REP/.PRG ****************
C :
C : PROGRAM FILE REPORT.PRG
C :
K : 
K : /TA PO
K : /RES STA
K : #J = Z_LIST(1)
K : #IF (J GT MAXMODES AND MAXMODES GT 0) THEN #J = MAXMODES
K : /RES SE
K :  RE 1; ;
K :  ATD
K : OKAY
K : #IF (Z_ERROR EQ 16261) THEN GOTO BAD_DATA
K :    !REP
K :      O
K :     O D
K : #IF (Z_ERROR EQ 4) THEN GOTO NO_REP
K :  SC N
K :  D ON
K :  FS Y
K :  A Y
K : OKAY
K : 
K :  FIL REPFLE
K : Y
K : OKAY
K : #X=2
K : #RLOOP:
K :     #IF (X GT J) THEN GOTO ENDRLOOP
K :       /RES SE
K :       RE X; ;
K :       ATD
K :       OKAY
K :       /REP E
K : 
K :       OKAY
K :       Y
K :     #X=X+1
K :     #GOTO RLOOP
K : #NO_REP:
K :     #OUTPUT "REPORT NOT WRITTEN... (NOT DEFORMED GEOMETRY)"
K :     #GOTO RLOOP
K : #ENDRLOOP:
K :     #GOTO EXIT_REP
K : #BAD_DATA:
K :     #OUTPUT "SOMETHING IS AMISS HERE..."
K :     #OUTPUT "REPORT WILL NOT BE WRITTEN."
K : #EXIT_REP:
K : /TA MO 
C : *************************** END REPORT .REP/.PRG ****************
K : # GOTO END1
C : 
C : --------------------------------------------------------------
C :       WRITE UNIVERSAL TO CREATE A MST*.ZAZ FILE
C : --------------------------------------------------------------
C :
K : # ZAZ_OUT:
K : /TA BO
K : /O U U SI
K : /O U T K
K : /F
K : EXP B 
K : SI OKAY
K : FN
K : ZAZFLE
K : YES
K : ALL OKAY
K : $
K : $
K : # IF ( OUTVAR EQ 3 ) THEN GOTO REP_OUT
C : 
C : --------------------------------------------------------------
C :       END PROGRAM AND QUIT MOD_SOL.PRG
C : --------------------------------------------------------------
C : 
K : # END1:
K : #END2:
E :
