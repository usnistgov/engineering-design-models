C : determine the terminal type
C :
C :  5/1/97 Modified for MS5
C : 
K : #HP_TEST:
C :   Replaced /o ha display with an hp query due to new driver config
K : #MENU "Select Platform" platform 1 5, 
K :   "H-Hp",
K :   "Sg-SGI",
K :   "Su-SUN",
K :   "I-IBM",
K :   "O-Other"
K : #if (platform gt 1) then #goto SGI_TEST
K : #terminal="HP"
K :  /ta mm
K :  /O C
K :  E 17; ;
K :  OP2
K :  R 90
K :  G 75
K :  B 75
K : APPL
K : OKAY
K :  E 18; ;
K :  OP2
K :  R 80
K :  G 80
K :  B 95
K : APPL
K : OKAY
K :  E 19; ;
K :  OP2
K :  R 99
K :  G 90
K :  B 90
K : APPL
K : OKAY
K :  E 20; ;
K :  OP2
K :  R 0
K :  G 0
K :  B 30
K : APPL
K : OKAY
K : CANC
K : $ /
K : #goto TERM
C :
K : #SGI_TEST:
K : #if ( platform gt 2) then #goto SUN_TEST
K : #terminal="SGI"
K : #goto TERM
C :
K : #SUN_TEST:
K : #if (platform gt 3) then #goto IBM_TEST
K : #terminal="SUN"
K : #goto TERM
C :
K : #IBM_TEST:
K : #if (platform gt 4) then #goto OTHER_TEST
K : #terminal="IBM"
K : #goto TERM
C :
K : #OTHER_TEST:
K : #if (platform gt 5) then #goto NEXT_TEXT
K : #terminal="OTHER"
K : #goto TERM
C :
K : #TERM:
K : #output "The terminal you are on is a " terminal
K :
K : #on_error pause
K :
C :++++++++++++++++++
C :+  screen setup  +
C :+ ++++++++++++++++
k : /
c : /o c op1 c back; b 15 okay canc
k : /o b back
k : /do lh li i off;okay;canc
k : /do df paf v rc off lt off okay;;
k : okay
C :
C : #on_error ignore
C :------------------------------------------
C : check assemblies into project libraries
C :-------------------------------------------
K :
K : $ $ $ /ta MA
K : $ mpos :; /ma ge
K :  ET DC 1; ;
K :  ET 3; ;
K : OKAY
K : $ return
K : $ mpos :; / a h
K :  PH 1; ;
K :  AP 
K :  N Food Processor Model 290
K : OKAY
K :  PH 1; ;
K :  AE 
K :  N Body
K : OKAY
K :  AE 
K :  N Base
K : OKAY
K :  AE 
K :  N Electronics
K : OKAY
K : Cancel
K : /a h
K :  PH 2; ;
K :  AE 
K :  N PCB
K : OKAY
K :  PH DC 2; ;
K :  AE 
K :  N Wire Harness
K : OKAY
K :  AE 
K :  N Switch
K : OKAY
K :  AE 
K :  N Cord
K : OKAY
K :  PH 1; ;
K :  AE 
K :  N Cover
K : OKAY
K :  AE 
K :  N Bowl Assy
K : OKAY
K : Cancel
K : /a h
K :  PH 2; ;
K :  AE 
K :  N Bowl
K : OKAY
K :  PH DC 2; ;
K :  AE 
K :  N Cutter Assembly
K : OKAY
K : Cancel
K : /a h
K :  PH 3; ;
K :  AE 
K :  N Blade_L
K : OKAY
K :  AE 
K :  N Blade_R
K : OKAY
K :  PH DC 3; ;
K :  AE 
K :  N Center Post
K : OKAY
K : CANC
K : 
K : #on_error ignore
K : /ma pu
K : $ mpos :; /ma ma
K :  ET 15; ;
K :  CI 
K :  D CX
K :  L Food Processors
K : Y
K : OKAY
K : CANC
K : $ return
K :
C :-----------------------------------------
C : Check in final body for backup
C :-------------------------------------------
K : /ma ma
K :  ET DC 4; ;
K :  ET 5; ;
K :  CI 
K :  D CX
K : OKAY
K :  ET 4; ;
K :  D 
K :
K : CANC
K :
k : /o u u mm
k : #on_error pause
c : ------------------------
c : GLOBAL SYMBOL DEFINITION
c :-------------------------
c :------------------------
c : CENTERLINES ON/OFF - cll
c :-----------------------
k : /option gl del
k : cll
K :
k : /option gl e
k : cll
k : "/do df paf v cl;;cp;;okay;cancel"
c : "/do df paf v cl;;okay;cancel"
c :----------------------------------
c : DRAFTING TRANSFER OF WIREFRAME - wRR 
c :---------------------------------
k :/option gl del
k : wrr
K : 
k :/option gl e
k : wrr
k : "/file pr r fil transfer.prg okay"
c : -------------------------------------------------------
c : DIMENSION AUTOSCALE AFTER PRESELECT, SET AS DEFAULT - add
c :--------------------------------------------------------
k : /option gl del
k : add
K :
k : /option gl e
k : add
k : "/mo ap t at on okay;/mo ap sd okay;;"
c :----------------------
c : OPTIMIZATION SETUP - OPT
C :-----------------------
K : /option gl del
k : opt
K :
K : /option gl e
k : opt
k : "/ta op;ado;/file pr run file opt.prg;okay"
c :----------------------
c : UPDATE ASSEMBLY MODEL - UPP
C :-----------------------
K : /option gl del
k : upp
K :
K : /option gl e
k : upp
k : "/ta op;/file pr run file update.prg;okay"
c :-----------------------
c : CONSTRAINT VISIBILITY TOGGLE  - CVV
C :----------------------------------
K : /option gl del
K : cvv
K :
K : /OPTION GL E
K : cvv
K : "/do df wbf v co;;okay;okay;"
c :-----------------------
c : DIMENSION ARROWS OUT  - ARR
C :----------------------------------
K : /option gl del arr
K : 
K :
K : /OPTION GL E
K : arr
K : "/mo ap ar o;;okay;des"
c :-----------------------
c : VIEW CLIPPING  - VCC
C :----------------------------------
K : /option gl del vcc
K : 
K :
K : /OPTION GL E
K : vcc
K : "/op ha"
c :-----------------------
c : LOCAL ORIGINS OFF  - LOO
C :----------------------------------
k : /option gl del
k : loo
k :
k : /OPTION GL E
k : loo
k : "/do df paf vi lt off;okay;okay;/"
c :-----------------------
c : AUTO-DRAW ON  -  ADO
C :----------------------------------
k : /option gl del
k : ado
k :
k : /OPTION GL E
k : ado
k : "/o pr p 5;don;ad on:okay;okay"
c :-----------------------
c : VIEW FRONT - VFF
C :----------------------------------
k : /option gl del
k : vff
k :
k : /OPTION GL E
k : vff
k : "/v ey -1 0 0 90"
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
c : 
C :
C : Startup parameters for dimensioning and DFT setup
C :
K : /v v pe of; e 0 0 1 0; okay;
K : $ AU
AP: 1 8 Change View
AP: 1 0 0 0 0
AP:  0.0            0.0            0.0
AP:  1.000000       0.0            0.0
AP:  0.0            1.000000       0.0
AP:  0.0            0.0            1.000000
AP:  0.1050000      1.000000       1.000000       14.99997
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ $ $ /ta MM
K : $ /cr l po
BP: 1  1      -6.71877503E-01    2.03370273E-01      151939740         0
BR: 1  1      -6.71877503E-01    2.03370273E-01      151939860       256
BP: 1  1      -6.69393659E-01   -3.05354595E-04      151944660         0
BR: 1  1      -6.69393659E-01   -3.05354595E-04      151944780       256
BP: 1  1       6.56976581E-01    4.66233492E-03      151948110         0
BR: 1  1       6.56976581E-01    4.66233492E-03      151948210       256
BP: 1  1       6.64428115E-01    1.83499455E-01      151952930         0
BR: 1  1       6.61944270E-01    1.85983300E-01      151953030       256
K : $ /cr a th
BP: 1  1       6.69395804E-01    1.95918739E-01      151957160         0
BR: 1  1       6.61944270E-01    2.05854118E-01      151957260       256
BP: 1  1      -2.11116076E-02    3.27562749E-01      151960240         0
BR: 1  1      -2.35953331E-02    3.27562749E-01      151960340       256
BP: 1  1      -6.61942124E-01    2.10821807E-01      151962100         0
BR: 1  1      -6.59458280E-01    2.10821807E-01      151962220       256
K : $ AU
AP: 1 8 Change View
AP: 1 0 0 0 0
AP: -0.0007818118   0.01718101     0.0
AP:  1.000000       0.0            0.0
AP:  0.0            1.000000       0.0
AP:  0.0            0.0            1.000000
AP:  0.07325359     1.000000       1.000000       14.99997
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ /mo ap
K : D
K : AN
K :  DS ANSI
K :  UP 
K :  PD O
K : OKAY
K :  SY 
K :  RS R
K :  DS P
K : OKAY
K :  LG 
K : OKAY
K :  CL 
K :  D N
K :  CO 4
K : APPL
K : OKAY
K :  T AT ON
K : OKAY
K : 
K : /o cs gdb_Constrain_subpanel; 1202; D; 1; D;
K : /cr ex
K : OP
K :  ST Y
K : OKAY
BP: 1  1       8.87973666E-01    1.04016304E-01      152071030         0
BR: 1  1       8.87973666E-01    1.04016304E-01      152071110       256
K : 
K : OKAY
K : $ mpos :; /ma pu
BP: 1  1       8.70586753E-01   -2.28819489E-01      152085190         0
BR: 1  1       8.73070598E-01   -2.28819489E-01      152085250       256
K :  N AAAA
K : OKAY
K : $
K : ado;redi
K : return; $ $ /ta D
AP: 1 8 Change View
AP: 1 0 0 0 0
AP: -0.0007818118   0.01718104     0.0
AP:  1.000000       0.0            0.0
AP:  0.0            1.000000       0.0
AP:  0.0            0.0            1.000000
AP:  0.07325363     1.000000       1.000000       14.99997
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ /mo ap
K : ANN
K : DS ANSI
K :  UP 
K :  AD Z
K : OKAY
K :  SY 
K :  RS R
K :  DS P
K : OKAY
K :  LG 
K : OKAY
K :  CL 
K :  CO 4
K :  D N
K :  CO 4
K : OKAY
K : OKAY
K : CRO
K :  S 2
K :  C 8
K : OKAY
K : SEC
K : OKAY
K : $
K : $ /lay
K :  MS A2 
K :  SH Picture_File
K :  F a2format.pff
K :  O 
K :  V 50
K : OKAY
K : OKAY
K : Y
AP: 1 8 Change View
AP: 1 0 0 0 0
AP:  0.2970000      0.2100000      0.0
AP:  1.000000       0.0            0.0
AP:  0.0            1.000000       0.0
AP:  0.0            0.0            1.000000
AP:  0.2100000      1.000000       1.000000       14.99997
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
BP: 1  1       3.65549088E-01   -1.09326839E-01      152199600         0
BR: 1  1       3.73524666E-01   -1.14643931E-01      152199680       256
k : $ $ $
K : /mo app
C : ann
C : cl
K : co
K : 4
K : okay
C : okay
K : $ mpos :; /ma ma
K :  ET DC 2; ;
K :  ET 3; ;
K :  D 
K :  ET 2; ;
K :  D 
K :  ET DC 1; ;
K : CANC
k : /ta mm
K :  /do df
K :  AA OF
K :  ASF 
K :  V ATN OF
K : OKAY
K :  PAF 
K :  V RP OF
K : OKAY
K :  WBF 
K :  V CO OF
K : OKAY
K : OKAY
AP: 1 8 Change View
AP: 1 0 0 0 0
AP: -0.0007818118   0.01718104     0.0
AP:  1.000000       0.0            0.0
AP:  0.0            1.000000       0.0
AP:  0.0            0.0            1.000000
AP:  0.07325363     2.537201       2.537201       14.99997
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ return
K : $ mpos :; /O P
K :  P 3; ;
K :  MP 75
K :  MP 60
K : OKAY
K :  P 8; ;
c :  RD 5
k :  sr off 
K : OKAY
K : OKAY
K : /cl
K : /#output "**********************************************************"
K : /#output "** Use detail drafting to import existing customer data **"
K : /#output "**********************************************************"
K : /redi
K : /ta mm
K : /
K : /
K : /
K : /
K : /
K : #NEXT_TEXT:
E : **** END OF SESSION ****
