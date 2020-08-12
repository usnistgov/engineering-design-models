C : ***********************
C : 2/24/98
C : Zip_1head_setup.prg
C : QA'd for MS6 on NT
C : ***********************
C :
K : /op un un mm
K :
K : /ta GE
K : CANC
K : $ / J O
K :  En 65;
K : OKAY
K : $ / OPE A
K : OKAY
K :  TOOL
K :  HEAD ID 5 mm End Mill
K : Y
K :  ! TOOL DIA 5
K :  ! TOOL HOLD 80
K :  ! TOOL SDIA 30
K :  ! TOOL HDIA 45
K :  ! TOOL HDIA A
K :  ! TOOL SDIA C
K :  ! TOOL HOLD D
K :  ! TOOL HDIA C
K :  ! HEAD STYL END
K :  ! TOOL NOSE A
K : OKAY
K :  TOOL
K :  HEAD ID 10 mm End Mill
K : Y
K :  ! TOOL DIA 10
K : OKAY
K :  TOOL
K :  HEAD ID 12 mm End Mill
K : Y
K :  ! TOOL HDIA 80
K :  ! TOOL HOLD 60
K :  ! TOOL MAXD 40
K :  ! TOOL DIA 12
K : OKAY
K :  TOOL
K :  HEAD ID 12 mm Ball Mill
K : Y
K :  ! HEAD STYL BALL
K : OKAY
K :  TOOL
K :  HEAD FIND
K : CANC
K :  ! HEAD ID 10 mm Ball Mill
K : Y
K :  ! TOOL DIA 10
K : OKAY
K : CANC
C :-------------------------------
C : Change to Design, Master Model 
C : to continue setip
C : -----------------------------
K : /ta app de mm
K : /do df paf v lt off;okay;okay
K : /
C :-------------------------------
C : Turn off asembly constraints
C :-------------------------------
K :  /do df
K :  ASF
K :  V CN OF
K : OKAY
K : OKAY
C : -----------------------
C : Change background Color
C :------------------------
K : $ mpos :; /O B
K : ?
K : >
K : >
K : 47
K : $ return
C :-------------------------------------
C : Adjust visibility of ref planes, etc
C : -------------------------------------
K : $ mpos :; /do df
K :  PAF
K :  V NO OF
K :  ! V RP OF
K :  ! V RA OF
K :  ! V RPL OF
K :  ! V PI OF
K :  ! V RC OF
K :  ! V CP OF
K :  ! V CL OF
K : OKAY
K :  ASF
K :  V ATN OF
K :  ! V PA OF
K :  ! V MK OF
K :  ! V SD OF
K :  ! V J OF
K :  ! V MJ OF
K :  ! V AL OF
K :  ! V RD OF
K : OKAY
K : OKAY
K : $ return
K : $ mpos :; /DO LI
K :  E 1;
K :  CU
K :  E 4;
K :  CU
K :  E 5;
K :  CU
K : CANC
K : $ return
C : --------------------------
C : Close bins
C : --------------------------
K : $ mpos :; /ma ma
K :  ET DC 2;
K :  ET DC 3;
K :  ET DC 4;
K :  ET DC 7;
K :  ET DC 8;
K :  ET DC 9;
K :  ET DC 12;
K :  ET DC 13;
K :  ET DC 14;
K :  ET DC 15;
K :  ET DC 16;
K : CANC
C :----------------------------------------
C : Orient workplane and create start point
C :-----------------------------------------
K : $ return
K : $ mpos :; /v v pe on; e 3 4 5 0; okay;
AP: 1 8 Change View
AP: 1 0 1 0 0
AP:  0.0            0.0            0.0
AP:  0.8574929      0.0           -0.5144958
AP: -0.2910428      0.8246211     -0.4850713
AP:  0.4242640      0.5656855      0.7071067
AP:  0.1250000      1.000000       1.000000       15.00000
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ return
K : $ /or mo
BP: 1  1       7.67282605E-01   -3.02166820E-01        5519990         0
BR: 1  1       7.67282605E-01   -3.02166820E-01        5520060       256
K : 
K : -6.354779 18.5 -60
K : $ /or r
BP: 1  1       8.54473710E-01   -2.09993243E-01        5546770         0
BR: 1  1       8.54473710E-01   -2.09993243E-01        5546810       256
K : 
K : 
K : Y
K : 
K : 
K : $ /cr p
K : OP
K :  FX 100
K :  FY -25
K : OKAY
K : 
C : ------------------------------------
C : Change color of point to background 
C : ------------------------------------
K : $ /mo ap
K : FIL
K :  Pm 19;
K :  Po
K : ALL
K : 
K : 
K :  C 47
K : OKAY
K : 
C : ----------------------------
C : Set shaded mode as default
C : ----------------------------
K : $ mpos :; /do so; ; dt shh appl canc
AP: 1 8 Change View
AP: 1 0 1 0 0
AP:  0.0            0.0            0.0
AP:  0.8574929      0.0           -0.5144958
AP: -0.2910428      0.8246211     -0.4850713
AP:  0.4242640      0.5656855      0.7071067
AP:  0.1250000      1.000000       1.000000       15.00000
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ return
K : $ /mo ap
K : $ mpos :; /do df
K :  AA OF
K : OKAY
AP: 1 8 Change View
AP: 1 0 1 0 0
AP:  0.0            0.0            0.0
AP:  0.8574929      0.0           -0.5144958
AP: -0.2910428      0.8246211     -0.4850713
AP:  0.4242640      0.5656855      0.7071067
AP:  0.1250000      2.520000       2.520000       15.00000
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ return
C : ------------------------
C : Turn on light sources
C : ---------------------
K :  /DO LI
K :  E 4;
K :  OP2
K :  V1 Y
K : OKAY
K :  E 5;
K :  OP2
K :  V1 Y
K : OKAY
K : CANC
C : -----------------------------
C : Get Zip 96 Assembly to Workbench
C : -------------------------------
K : $ mpos :; /ma ma
K :  ET 6;
K :  G
K : CANC
K : $ return
K : $ AU
K : mg 1.4
K : rs -20
K : 
C :---------------------------------
C : Adjust translucency of covers
C :--------------------------------
K : $ /mo ap
BP: 1  1       9.98962045E-01    3.48030448E-01        7024550         0
BR: 1  1       9.98962045E-01    3.48030448E-01        7024760       256
BP: 1  1       9.98962045E-01    3.48030448E-01        7025350         0
BR: 1  1       9.98962045E-01    3.48030448E-01        7025420       256
BP: 1  1       1.00394452E+00    8.64568353E-02        7027820         1
BR: 1  1       1.00394452E+00    8.64568353E-02        7027880       257
BP: 1  1       1.00394452E+00    8.64568353E-02        7027960         1
BR: 1  1       1.00394452E+00    8.64568353E-02        7028050       257
K : 
K :  V Ts OF
K :  ! V Ts ON
K :  ! V Tr 40
K :  ! V Tv1 OF
K :  ! V Tv1 ON
K : OKAY
AP: 1 8 Change View
AP: 1 0 1 0 0
AP:  0.06763513     0.02649999    -0.06860749
AP:  0.6721530     -0.03125865    -0.7397521
AP: -0.2876105      0.9096268     -0.2997652
AP:  0.6822686      0.4142485      0.6024181
AP:  0.1460157      2.619919       2.619919       15.00000
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
AP: 2 11 Program File User Preferences
AP: 0 1 0 0 0 0 0 1 0
AP: 1 -0.1000000     -0.1000000      0.1000000      0.1000000
AP: 2  0.0            0.0            0.0            0.0
AP: 3                        0                        0                       -1
AP: 4                        0                        1                        0
AP: 5                        1                        0                        0
AP: 6    -0.006354778999999998                   0.0185                    -0.06
AP: 7 0 0 0 10 10  0.05000000     0.05000000     0.05000000     30.00000
AP: 8 1
AP: 9 1 1
AP: 10 1 1 0 20   2.000000
K : $ return
K : 
C :------------------------------------------
C : Change to ANSI Dimension standard
C :------------------------------------------
K : $ /mo ap
K : D
K : AN
K :  DS ANSI
K : OKAY
K : 
K : 
K : /
K : 
C : -----------------------------------------
C : Change to set up Simulation information
C : -----------------------------------------
K :  /ta xx SI
K :
K :  /ma ma
K :  ET 18;
K :  PA
K : CANC
C : -------------------------------------
C : Turn off nodes and elements
C : -------------------------------------
K :  /do df
K :  TX2
K :  VI NV OF
K :  ! VI EV OF
K : OKAY
K : OKAY
K : 
C : -------------------------------
C : Add Global symbols
C : -------------------------------
K : /f pr r fil ..\..\util\symbols.prg okay
K : /
K : au;mg 1.5
K : $ mpos :; /F SA
K :  FIL Zip_1head_start
K : OKAY
K : $ return
K : /cl
K : #output "Model File Saved As 'Zip_1head_start'"
K : #output "Automatically Exiting..."
C :
K : #wait 5
K : $ mpos :; EXIT
K : N
E : **** END OF SESSION ****
