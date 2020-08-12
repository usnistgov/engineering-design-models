C : ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
C : Automotive Demonstration installation script
C :	Written by : Michael Ricci 513-576-2109 
C : 		     	SDRC	5/1/97
C :                         
C :     
C :	UPDATE FOR MASTER SERIES 5.0 MAY 1997
C :
C :
C :               - MASTER WORKSTATION VERSION -
C :  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
C :
C :------------------------------------------
C : Check assemblies into project libraries -
C :------------------------------------------
C :Create NC parts library
k : #on_error ignore
K : $ return
K : $ mpos :; /ma ma
K :  ET DC 5;
K :  ET 11;
K :  CI
K :  L NC Parts
K :  Y
K :  D CX
K : OKAY
K : Y
K :  ET 11;
K :  CI
K :  D CX
K : OKAY
K :  ET 11;
K :  CI
K :  D CX
K : OKAY
K : CANC
K : $ return
k : #on_error pause
C :
C :--------------------------
C : Change Steel color 
C :---------------------------
K :  /O C
K :  E 18;
K :  OP2
K :  R 40
K :  G 40
K :  B 55
K : OKAY
K : CANC
K : $ /
K :
K : #on_error pause
K :
K :
C :++++++++++++++++++
C :+  screen setup  +
C :+ ++++++++++++++++
C :
C : Set translucency to new surfaces
C :
K : $ return
K : $ /mo ap
K : D
K : SA
K :  V Tr 50
K :  ! V Tv1 ON
K : OKAY
K : 
K :
K : /O B
K : background
C : $ return
k : /do lh li i of;okay;canc
k : /do df paf v rc of lt of okay;;
k : okay
C :
K : #on_error pause
C :
C :------------------------------------------------------
C : CREATE "Piston_Design", ADOPT PISTON STANDARD PART AND
C : CREATE DEPENDENCY ON PICTURE FILE FOR PREVIEW HELP
C : IN STANDARD PART USE.
C :
C :
C :-------------------------------------------
C : CREATE CREATE CATALOG, ADOPT, AND RELATE -
C :-------------------------------------------
C :
C : Create Catalog
C :
K :
K :  /MA CA
K :  CC 
K :  CA Piston_Design
K : OKAY
K : OKAY
K : 
K :
C : ----------------------------------------------
C : Adopt Piston Picture File and
C : Relate Piston picture fil for catalog preview  
C : ----------------------------------------------
K : #on_error ignore
K :  /ma ge
K :  ET 8;
K : OKAY
K :  /o cs gdb_Catalog_subpanel; 1202; D; 1; D;
K : 
K :
K :  /ca mc ch
K : LAB
K : 
K : CP
K :  D CX
K : OKAY
K : /
K : #on_error pause
AP: 1 8 Change View
AP: 1 0 1 0 0
AP: -0.02924678    -0.09641157     0.2392627
AP:  0.9005031     -0.004487166    0.4348264
AP:  0.1417940      0.9483232     -0.2838619
AP: -0.4110822      0.3172743      0.8546042
AP:  0.3069203      0.6808094      0.6808094      15.00000
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ return
K : $ mpos :; /o ds 1;
K : $ return
K : $ mpos :; /MA IT
K :  AD
K :  TS
K :  TA DC 11;
K :  TA 14;
K :  P
K :  FIL Piston0172.pff
K :  UFIL piston
K :  FL
K :  IS 1;
K : OKAY
K : OKAY
K :  FS S
K :  T
K :  TA DC 4;
K :  TA 4;
K :  TA 4;
K :  TA 4;
K :  TA 4;
K :  TA 14;
K :  P
K :  IS 1;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  FS S
K :  T
K :  TA DC 15;
K :  TA 18;
K :  P
K :  IS 1;
K : OKAY
K : OKAY
K : OKAY
K : $ return
C :----------------------------------------------
C : Set catalog as default standard part in form 
C :----------------------------------------------
K :  /ca p
K :  CA 
K :  CT PC
K : C engine
K : L Piston_Design
K : OKAY
K : OKAY
K :
K :
C :------------------------------------
C : CREATE FINAL PARTS LIBRARY        -
C :------------------------------------
C :
K :  /MA LIB
K :  CL 
K :  LB Final Parts
K : OKAY
K : OKAY 
K : 
C :------------------------------------
C : CHECK IN FINAL PARTS AS BACKUP    -
C : CONNECTING ROD, DETAILED PISTON   -
c : -----------------------------------
K : #on_error ignore
K :  /ma ma
K :  ET 8; ;
K :  CI 
k :  L Final Parts
K :  D CX
K : OKAY
K : CANC
C :
C :----------------------------
C : Dimension size defaults
C :---------------------------
K : /mo ap
K : D
K : AN
K :  TV
K :  DH 3.00
K : OKAY
K :  TV
K : OKAY
K :  LG
K :  TG 1.6
K :  EG 1.5
K :  EE 3
K : OKAY
K :  A
K :  AL 4.4
K :  AO 8.2
K : OKAY
K :  LG
K : OKAY
K : OKAY
K : DON
K :
C :
C :-----------------------------
c : GLOBAL SYMBOL DEFINITION   -
c :-----------------------------
C :
C :
C :---------------------------------------------
C : OA routine for Valve called by valve icon  -
C :---------------------------------------------
C: /o g d
C : val
C : 
C : /o g e
C : val
C : "/oaxx run VALVE"
K : /o g d
K : val
K : 
K : /o g e
K : val
K : #execute "xwud -in valve_xwd/valve1.xwd"
K : 
C : --------------------------
C : OA routine for Spreadsheet
C : -------------------------
K : /o g d
K : sss
K : 
K : /o g e
K : sss
C : "/oaxx run SS"
K : #execute "xwud -in valve_xwd/ss1.xwd"
K :
c :------------------------
c : CENTERLINES ON/OFF - cll
c :-----------------------
k : /o g d
k : cll
K :
k : /o g e
k : cll
k : "/do df paf v cl;;cp;;okay;canc"
c : "/do df paf v cl;;okay;canc"
c : -------------------------------------------------------
c : DIMENSION AUTOSCALE AFTER PRESELECT, SET AS DEFAULT - add
c :--------------------------------------------------------
k : /o g d
k : add
K :
k : /o g e
k : add
k : "/mo ap t at on okay;/mo ap sd okay;;des"
C :
c :---------------------------------------------
c : Mesh Surface Definition - sff              -
C : Defines Global Element Length              -
C : And Turns Off Curvature Based Meshing.     -
C :---------------------------------------------
C :
K : /o g d
k : sff
K :
K : /o g e
k : sff
k : "/f pr r fil sff.prg;okay"
c :-----------------------
c : CONSTRAINT VISIBILITY TOGGLE  - CVV
C :----------------------------------
K : /o g d
K : cvv
K :
K : /o g e
K : cvv
K : "/do df wbf v co;;okay;okay;"
c :-----------------------
c : DIMENSION ARROWS OUT  - ARR
C :----------------------------------
K : /o g d arr
K : 
K :
K : /o g e
K : arr
K : "/mo ap ar o;;okay;des"
c :-----------------------
c : VIEW CLIPPING  - VCC
C :----------------------------------
K : /o g d vcc
K : 
K :
K : /o g e
K : vcc
K : "/op ha"
c :-----------------------
c : LOCAL ORIGINS OFF  - LOO
C :----------------------------------
k : /o g d
k : loo
k :
k : /o g e
k : loo
k : "/do df paf vi lt of;okay;okay;/"
c :-----------------------
c : AUTO-DRAW ON  -  ADO
C :----------------------------------
k : /o g d
k : ado
k :
k : /o g e
k : ado
k : "/o pr p 5;don;ad on:okay;okay"
C :---------------------------------------------
C : Translucency on afterpart preselection- TRR
C :---------------------------------------------
k : /o g d
k : trr
k :
k : /o g e
k : trr
K : "/mo ap v ts on;tr 50;;okay;;des"
k :
C :------------------------------------------
C : Set part Opaque after preselection - OPP
C :------------------------------------------
k : /o g d
k : opp
k :
k : /o g e
k : opp
K : "/mo app v ts on;tr 0;okay;;des;/mo ap d sa v;tr 0;okay;;"
K :
C :---------------------------
C : Feature reorder  - REE   -
C :---------------------------
k : /o g d
k : ree
k :
k : /o g e
k : ree
K : "/mo spe reo"
k : /
C :---------------------------
C : Post process results 1 - PP1
C :---------------------------
k : /o g d
k : pp1
k :
k : /o g e
k : pp1
K : "/f pi op f f;okay;pi d fil post1.pff;okay"
k : /
C :---------------------------
C : Post process results 2 - PP2
C :---------------------------
k : /o g d
k : pp2
k :
k : /o g e
k : pp2
K : "/f pi op f f;okay;pi d fil post2.pff;okay"
k : /
C :-------------------------------------------
C : Post process optimization results 3 - PP3
C :-------------------------------------------
k : /o g d
k : pp3
k :
k : /o g e
k : pp3
K : "/f pi op f f;okay;pi d fil post3.pff;okay"
k : /
C :-------------------------------------------
C : Execute volume.prg for stamping vignette - vvv
C :-------------------------------------------
k : /o g d
k : vvv
k :
k : /o g e
k : vvv
K : "/f pr r fil volume.prg;okay"
k : /
C :-------------------------------------------
C : Execute pll.prg for plane cut - pll
C :-------------------------------------------
k : /o g d
k : pll
k :
k : /o g e
k : pll
K : "/f pr r fil pl.prg;okay"
k : /
c :
C :------------------------
C :  Cleanup
C :--------------------------
C :
C : Turn constraint visibility off; asy names off
C :
C :
K : /ta MM
K : /do df
K :  WBF 
K :  V CO OF
K : OKAY
K :  ASF 
K :  V ATN OF
K : OKAY
K : OKAY
K : /F PR E
K : /do so; ; dt shh appl canc
K : /
K : /
k : /
k : /cg;/er off;/f pi op f f;okay;pi d fil start.pff;okay;/er on;/
E : **** END OF SESSION ****
