C : Program file to set the Retain Intermediate results value to "all" in the
C : Update Options form.  Currently (2.0) this value is reset to the default
C : of 3 after switching applications or opening a model file (new or old).
C : Also, turn off coincident, colinear, midpoint constraint creation during
C : navigation to avoid over-constraining sections during sketching.
C :
C : Set this up as userprof.prg in the directory in which I-DEAS is run.
C :
K : #echo none
C :-----------------------------------------------------------------------------
C : --- Check for applications where the Master Modeler available.
C :   In the Geometry Translators, MM is a task option but this actually causes
C :   an executable switch to the PCB executable which causes problems so we
C :   skip IGES, SET, and VDA.
C :         Design:  501
C :     Simulation:  701
C :  Manufacturing:  560
C : PCB Translator:  420
C :
K : #IF (NOT(Z_PROGRAM EQ 501 OR Z_PROGRAM EQ 701 OR Z_PROGRAM EQ 560,
K : OR Z_PROGRAM EQ 420)) THEN GOTO NOSET
C :
C : Z_PROGRAM is undefined in the Test application which usually results in a
C : very large number so just trap any program numbers greater than 1,000
C :
K : #IF (Z_PROGRAM GT 1000) THEN GOTO NOSET
C :
C : --- Mark the current position in the menu tree (needed if you want to enter
C : an application and go to a task other than the default)
C :
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
K : #OUTPUT "Retain Intermediate Results set to ALL"
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
K :  PD 1
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
c :==========================
c : GLOBAL SYMBOL DEFINITION
c :==========================
C :
C :                    Clamp demo symbols
C :
c :-------------------------
C : TO READ IN THE HANDLE VIEWS
c :-------------------------
k : /option gl del
k : wrr
K :
k : /option gl e
k : wrr
K : "/f pr r fil read_handle_views.prg okay"
C :
C :
c :-------------------------
C : TO SETUP THE FE MODEL
c :-------------------------
k : /option gl del
k : fes
K :
k : /option gl e
k : fes
K : "/f pr r fil fe_model_setup.prg okay"
C :
c :----------------------------------
C : TO SETUP THE SOLID MESH AND SOLVE
c :----------------------------------
k : /option gl del
k : mes
K :
k : /option gl e
k : mes
K : "/f pr r fil mesh_setup.prg okay"
C :
c :----------------------------
C : TO SETUP THE DRAFTING SETUP
c :----------------------------
k : /option gl del
k : dfs
K :
k : /option gl e
k : dfs
K : "/f pr r fil dftg_setup.prg okay"
c :
C :
C :                    General symbols
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
