C : Program file to set the Retain Intermediate results value to "all" in the
C : Update Options form.  Currently this value is reset to the default
C : of 3 after switching applications or opening a model file (new or old).
C :
C : Set this up as userprof.prg in the directory in which I-DEAS is run.
C :
K : #echo none
C :-----------------------------------------------------------------------------
K : MPOS
K :
C :
C : --- If any application errors occur, skip the setup
C :
K : #ON_ERROR GOTO NOSET
C :
C : --- Task to the Master Modeler and set the intermediate results value
C : "ALL"
C :
K : /TA MM
K : $ /up uo
K :  RI A
K : OKAY
C :
C : --- Set the dimension defaults and lighting defaults
K : $ return
K : $ /mo ap
K : D
K : AN
K :  SY
K :  RS R
K :  DS P
K : OKAY
K :  TV
K :  DH 3
K :  NH 3
K : OKAY
K :  UP
K :  PD 0
K : OKAY
K :  LG
K :  TG 1
K :  EG 1
K :  EE 1
K : OKAY
K :  A
K :  AL 3
K :  AO 5
K : OKAY
K : OKAY
K : 
C :
C : --- Return to the previously saved place in the menu tree
C :
K : RETURN
c :-------------------------
c : GLOBAL SYMBOL DEFINITION
c :-------------------------
c :-------------------------
c : CENTERLINES ON/OFF - cll
c :-------------------------
k : /option gl del
k : cll
K :
k : /option gl e
k : cll
k : "/do df paf v cl;;cp;;okay;cancel"
c : "/do df paf v cl;;okay;cancel"
c :
c :----------------------------------------------------------
c : DIMENSION AUTOSCALE AFTER PRESELECT, SET AS DEFAULT - add
c :----------------------------------------------------------
k : /option gl del
k : add
K :
k : /option gl e
k : add
k : "/mo ap t at on okay;/mo ap sd okay;;des"
c :
c :------------------------------------
c : CONSTRAINT VISIBILITY TOGGLE  - CVV
c :------------------------------------
K : /option gl del
K : cvv
K :
K : /OPTION GL E
K : cvv
K : "/do df wbf v co;;okay;okay;"
c :
c : ----------------------------------
c : Set Center Line Font & Color - CCL
c : ----------------------------------
K : /option gl del
K : ccl
K : 
K : /option gl e
K : ccl
K : "/mo ap color 6 li center;okay;des"
c :
c : -------------------------------------
c : Align Workplane to curve normal - AWW
c : -------------------------------------
K : /option gl del
K : aww
K : 
K : /option gl e
K : aww
K : "/or al l workplane; pl cu"
c : 
K : #NOSET:
K : #echo all
K : #EXIT
