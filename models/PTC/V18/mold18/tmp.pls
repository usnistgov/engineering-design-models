VERSION G-01-13
REVNUM 37102
LISTING FOR GENERIC PART P_HOUSING

INPUT
 PART_TYPE NUMBER
 "WHICH VERSION OF THE DRILL? ENTER 1 FOR HOME VERSION, 2 FOR COMMERCIAL"
END INPUT

RELATIONS
/*THIS CHANGES THE LENGTH IF THE BARREL_DIAMETER PARAM CHANGES

IF PART_TYPE == 2
BARREL_DIAM = 2.75
NOSE_LENGTH = 7.0
GRIP_HEIGHT = 5.75
D138 = 1.95
ELSE
BARREL_DIAM = 2.3
NOSE_LENGTH = 6
GRIP_HEIGHT = 5.5
D138 = 1.70
ENDIF

/*THIS ADDS MORE SLOTS IF THE PARAMETER CHANGES
IF PART_TYPE == 2
P1 = 5
ELSE
P1 = 2
ENDIF

/*THIS RELATES THE BARREL DIAMETER TO THE PARAMETER
D589 = BARREL_DIAM


/*THIS RELATES MODEL GEOMETRY TO PARAMETER
D161 = NOSE_LENGTH

/*THESE RELATE MODEL GEOMETRY (THE PLACEMENT OF THE BARREL
/* AND THE HEIGHT OF THE GRIP) TO THE PARAMETER
D160 = GRIP_HEIGHT+.5
D127 = GRIP_HEIGHT
D136 = GRIP_HEIGHT
D739 = GRIP_HEIGHT
END RELATIONS


 ADD FEATURE (initial number 1)
 INTERNAL FEATURE ID  1

 FIRST FEATURE: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Section                                                         Defined   
  2  Depth        Blind, depth = 0.6                                 Defined   

 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d0 = 2.750 Dia
 d1 = 3.540
 d2 = 3.565R
 d3 = .60
 END ADD


 ADD FEATURE (initial number 2)
 INTERNAL FEATURE ID  20
 PARENTS = 1(#1) 
 TYPE = DATUM PLANE
 NAME = DTM1

    FEATURE IS IN LAYER(S) :
      DTM_PLNS - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 3)
 INTERNAL FEATURE ID  2392
 PARENTS = 1(#1) 20(#2) 
 TYPE = DATUM PLANE
 NAME = DTM2

    FEATURE IS IN LAYER(S) :
      DTM_PLNS - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 4)
 INTERNAL FEATURE ID  3027
 PARENTS = 1(#1) 20(#2) 
 TYPE = DATUM PLANE
 NAME = DTM5

    FEATURE IS IN LAYER(S) :
      DTM_PLNS - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 5)
 INTERNAL FEATURE ID  22
 PARENTS = 1(#1) 

 DRAFT: Neutral Plane Draft
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   No Split, Constant                                 Defined   
  2  Draft Srfs   3 draft surface(s)                                 Defined   
  3  Neut Plane   Surface of feat #1 (FIRST FEATURE)                 Defined   
  4  Draft Dir    Surface of feat #1 (FIRST FEATURE)                 Defined   
  5  Draft Angles Angle = 15.0000 degrees                            Defined   

 FEATURE'S DIMENSIONS:
 d4 = 15.0
 END ADD


 ADD FEATURE (initial number 6)
 INTERNAL FEATURE ID  39
 PARENTS = 1(#1) 22(#5) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d5 = .50R
 END ADD


 ADD FEATURE (initial number 7)
 INTERNAL FEATURE ID  56
 PARENTS = 1(#1) 20(#2) 22(#5) 

 PROTRUSION: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface of feat #1 (FIRST FEATURE)     Defined   
  3  Direction                                                       Defined   
  4  Depth        Blind, depth = 0.75                                Defined   

 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d9 = .75
 d50 = 1.750
 d588 = .686
 END ADD


 ADD FEATURE (initial number 8)
 INTERNAL FEATURE ID  75
 PARENTS = 1(#1) 22(#5) 56(#7) 

 SURFACE: Variable Section Sweep, Normal to Spine
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Spine        Selected Trajectory                                Defined   
  2  X-Vector     Selected Trajectory                                Defined   
  3  Trajectories 0 Trajectories specified                           Defined   
  4  Attributes   Open Ends                                          Defined   
  5  Section                                                         Defined   

 SECTION NAME =  
 SECTION NAME =  
 SECTION NAME = S2D0001 
 OPEN SECTION
    FEATURE IS IN LAYER(S) :
      SURFS - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d52 = .325R
 d736 = .250
 END ADD


 ADD FEATURE (initial number 9)
 INTERNAL FEATURE ID  10501
 PARENTS = 56(#7) 75(#8) 20(#2) 2392(#3) 

 SURFACE: Flat
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Section      Sk. plane - Surface DTM1 of feat #2 (DATUM PLANE)  Defined   

 SECTION NAME = S2D0006 
 END ADD


 ADD FEATURE (initial number 10)
 INTERNAL FEATURE ID  10528
 PARENTS = 1(#1) 22(#5) 56(#7) 75(#8) 20(#2) 2392(#3) 

 SURFACE: Flat
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Section      Sk. plane - Surface DTM1 of feat #2 (DATUM PLANE)  Defined   

 SECTION NAME = S2D0005 
 END ADD


 ADD FEATURE (initial number 11)
 INTERNAL FEATURE ID  10562
 PARENTS = 75(#8) 10528(#10) 
 TYPE = SURFACE MERGE - BY JOIN 

 END ADD


 ADD FEATURE (initial number 12)
 INTERNAL FEATURE ID  10572
 PARENTS = 75(#8) 10501(#9) 
 TYPE = SURFACE MERGE - BY JOIN 

 END ADD


 ADD FEATURE (initial number 13)
 INTERNAL FEATURE ID  227
 PARENTS = 75(#8) 
 TYPE = PATCH

 END ADD


 ADD FEATURE (initial number 14)
 INTERNAL FEATURE ID  1621
 PARENTS = 1(#1) 22(#5) 39(#6) 75(#8) 227(#13) 

 PROTRUSION: Variable Section Sweep, Normal to Spine
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Spine        Selected Trajectory                                Defined   
  2  X-Vector     Selected Trajectory                                Defined   
  3  Trajectories 0 Trajectories specified                           Defined   
  4  Section                                                         Defined   

 SECTION NAME =  
 SECTION NAME =  
 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d611 = .050
 END ADD


 ADD FEATURE (initial number 15)
 INTERNAL FEATURE ID  2162
 PARENTS = 1(#1) 56(#7) 75(#8) 227(#13) 20(#2) 3027(#4) 

 PROTRUSION: Variable Section Sweep, Normal to Spine
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Spine        Sketched Trajectory                                Defined   
  2  X-Vector     Sketched Trajectory                                Defined   
  3  Trajectories 1 Trajectories specified                           Defined   
  4  Section                                                         Defined   

 TRAJECTORY = SKETCHED
 SECTION NAME = S2D0007 
 SECTION NAME = S2D0007 
 SECTION NAME = S2D0007 
 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d127 = 5.750
 d136 = 5.750
 d138 = 1.950
 d618 = 10.008
 d622 = .686R
 d623 = .6860R
 d738 = .700
 d739 = 5.750
 d799 = 180.000
 END ADD


 ADD FEATURE (initial number 16)
 INTERNAL FEATURE ID  2394
 PARENTS = 1(#1) 20(#2) 2392(#3) 

 PROTRUSION: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  Direction                                                       Defined   
  4  Depth        Blind, depth = 7                                   Defined   

 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d157 = 1.00
 d160 = 6.250
 d161 = 7.00
 d589 = 2.750 Dia
 END ADD


 ADD FEATURE (initial number 17)
 INTERNAL FEATURE ID  2419
 PARENTS = 20(#2) 2394(#16) 

 PROTRUSION: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface of feat #16 (PROTRUSION)       Defined   
  3  Direction                                                       Defined   
  4  Depth        Blind, depth = 4.8                                 Defined   

 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d165 = 4.000R
 d169 = 4.80
 d590 = 17.500
 d594 = .175
 END ADD


 ADD FEATURE (initial number 18)
 INTERNAL FEATURE ID  2450
 PARENTS = 2394(#16) 2419(#17) 20(#2) 

 CUT: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Sketched Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   
  4  MaterialSide Inside section                                     Defined   

 TRAJECTORY = SKETCHED
 SECTION NAME = S2D0001 
 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d170 = 1.150R
 d171 = 1.250
 d172 = .500
 d177 = .432 Dia
 d180 = 1.500R
 d183 = 2.000
 d626 = 1.500
 END ADD


 ADD FEATURE (initial number 19)
 INTERNAL FEATURE ID  2515
 PARENTS = 20(#2) 2392(#3) 2394(#16) 2450(#18) 

 CUT: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Sketched Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   
  4  MaterialSide Inside section                                     Defined   

 TRAJECTORY = SKETCHED
 SECTION NAME = S2D0001 
 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d197 = 1.000
 d583 = 1.000
 d630 = 1.500R
 d631 = .500
 END ADD


 ADD FEATURE (initial number 20)
 INTERNAL FEATURE ID  2724
 PARENTS = 2419(#17) 20(#2) 
 TYPE = CURVE - SKETCH

 SECTION NAME = S2D0017 
    FEATURE IS IN LAYER(S) :
      CURVES - OPERATION = NORMAL
 FEATURE'S DIMENSIONS:
 d233 = .85
 END ADD


 ADD FEATURE (initial number 21)
 INTERNAL FEATURE ID  2731
 PARENTS = 2419(#17) 2724(#20) 
 TYPE = CURVE - SKETCH

 SECTION NAME = S2D0001 
    FEATURE IS IN LAYER(S) :
      CURVES - OPERATION = NORMAL
 FEATURE'S DIMENSIONS:
 d240 = 180.000
 END ADD


 ADD FEATURE (initial number 22)
 INTERNAL FEATURE ID  10724
 PARENTS = 2419(#17) 2724(#20) 20(#2) 
 TYPE = CURVE - SKETCH

 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d642 = 180.000
 d643 = 180.000
 END ADD


 ADD FEATURE (initial number 23)
 INTERNAL FEATURE ID  2780
 PARENTS = 2394(#16) 2419(#17) 2724(#20) 2731(#21) 10724(#22) 

 SURFACE: Blended Surface
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Curves       2 Items in First Dir, 2 Items in Second Dir        Defined   
  2  Control Pts                                                     Optional  
  3  Tangency                                                        Optional  

    FEATURE IS IN LAYER(S) :
      SURFS - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 24)
 INTERNAL FEATURE ID  10731
 PARENTS = 2419(#17) 2780(#23) 20(#2) 

 SURFACE: Flat
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Section      Sk. plane - Surface DTM1 of feat #2 (DATUM PLANE)  Defined   

 SECTION NAME = S2D0003 
 END ADD


 ADD FEATURE (initial number 25)
 INTERNAL FEATURE ID  10751
 PARENTS = 2780(#23) 10731(#24) 
 TYPE = SURFACE MERGE - BY JOIN 

 END ADD


 ADD FEATURE (initial number 26)
 INTERNAL FEATURE ID  10857
 PARENTS = 2780(#23) 
 TYPE = PATCH

    FEATURE IS IN LAYER(S) :
      SURFS - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 27)
 INTERNAL FEATURE ID  3029
 PARENTS = 2394(#16) 3027(#4) 20(#2) 

 PROTRUSION: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  Direction                                                       Defined   
  4  Depth        Through Next                                       Defined   

 SECTION NAME = S2D0004 
 FEATURE'S DIMENSIONS:
 d247 = .375
 d252 = .250R
 d654 = .500
 d656 = 2.500
 END ADD


 ADD FEATURE (initial number 28)
 INTERNAL FEATURE ID  7516
 PARENTS = 3029(#27) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d458 = .13R
 END ADD


 ADD FEATURE (initial number 29)
 INTERNAL FEATURE ID  7554
 PARENTS = 2162(#15) 3029(#27) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d459 = .25R
 END ADD


 ADD FEATURE (initial number 30)
 INTERNAL FEATURE ID  10931
 PARENTS = 75(#8) 227(#13) 2162(#15) 2394(#16) 3029(#27) 7516(#28) 7554(#29) 
 TYPE = ROUND - EDGE - VARIABLE RADIUS

 FEATURE'S DIMENSIONS:
 d669 = .250R
 d670 = .330R
 d671 = .250R
 d672 = .330R
 END ADD


 ADD FEATURE (initial number 31)
 INTERNAL FEATURE ID  10971
 PARENTS = 2394(#16) 2780(#23) 10857(#26) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d673 = .130R
 END ADD


 ADD FEATURE (initial number 32)
 INTERNAL FEATURE ID  10978
 PARENTS = 2394(#16) 2515(#19) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d674 = .250R
 END ADD


 ADD FEATURE (initial number 33)
 INTERNAL FEATURE ID  14592
 PARENTS = 2394(#16) 2419(#17) 2450(#18) 2515(#19) 2780(#23) 10857(#26) 
           10978(#32) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d819 = .05R
 END ADD


 ADD SUPPRESSED FEATURE
 INTERNAL FEATURE ID  10997
 PARENTS = 2419(#17) 2450(#18) 2780(#23) 10857(#26) 

 ROUND: General
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Round Type   Advanced                                           Defined   
  2  Round Shape  Rolling Ball                                       Defined   
  3  Round Sets   2 Sets                                             Defined   
  4  Transitions                                                     Defined   
  5  Attach Type  Make Solid - Feature has solid geometry            Defined   


 Round Set 1
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   Constant, Edge Chain                               Defined   
  2  References                                                      Defined   
  3  Radius       Value = 0.1300                                     Defined   


 Round Set 2
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   Constant, Edge Chain                               Defined   
  2  References                                                      Defined   
  3  Radius       Value = 0.1300                                     Defined   

 FEATURE'S DIMENSIONS:
 d675 = .130R
 d676 = .130R
 END ADD


 ADD FEATURE (initial number 34)
 INTERNAL FEATURE ID  5158
 PARENTS = 20(#2) 2450(#18) 
 TYPE = CURVE - SURFACE INTERSECTION

    FEATURE IS IN LAYER(S) :
      CURVES - OPERATION = NORMAL
 END ADD


 ADD FEATURE (initial number 35)
 INTERNAL FEATURE ID  5164
 PARENTS = 20(#2) 2450(#18) 5158(#34) 
 TYPE = DATUM POINT
 NAME = PNT0

 LEADER OF A (5 X 1) DIM GENERAL PATTERN
    FEATURE IS IN LAYER(S) :
      POINTS - OPERATION = BLANKED
 MAIN PATTERN DIMENSIONS:
 INCREMENTAL PATTERN DIMENSIONS:
 d339 = .400 LEN
 d340 = .425
 END ADD


 ADD FEATURE (initial number 36)
 INTERNAL FEATURE ID  5166
 PARENTS = 20(#2) 2450(#18) 5158(#34) 5164(#35) 
 TYPE = DATUM POINT
 NAME = PNT1

 MEMBER (2, 1) IN A (5 X 1) DIM GENERAL PATTERN
    FEATURE IS IN LAYER(S) :
      POINTS - OPERATION = BLANKED
 MAIN PATTERN DIMENSIONS:
 INCREMENTAL PATTERN DIMENSIONS:
 d339 = .400 LEN
 d340 = .425
 END ADD


 ADD FEATURE (initial number 37)
 INTERNAL FEATURE ID  5167
 PARENTS = 20(#2) 2450(#18) 5158(#34) 5164(#35) 
 TYPE = DATUM POINT
 NAME = PNT2

 MEMBER (3, 1) IN A (5 X 1) DIM GENERAL PATTERN
    FEATURE IS IN LAYER(S) :
      POINTS - OPERATION = BLANKED
 MAIN PATTERN DIMENSIONS:
 INCREMENTAL PATTERN DIMENSIONS:
 d339 = .400 LEN
 d340 = .425
 END ADD


 ADD FEATURE (initial number 38)
 INTERNAL FEATURE ID  5168
 PARENTS = 20(#2) 2450(#18) 5158(#34) 5164(#35) 
 TYPE = DATUM POINT
 NAME = PNT3

 MEMBER (4, 1) IN A (5 X 1) DIM GENERAL PATTERN
    FEATURE IS IN LAYER(S) :
      POINTS - OPERATION = BLANKED
 MAIN PATTERN DIMENSIONS:
 INCREMENTAL PATTERN DIMENSIONS:
 d339 = .400 LEN
 d340 = .425
 END ADD


 ADD FEATURE (initial number 39)
 INTERNAL FEATURE ID  5169
 PARENTS = 20(#2) 2450(#18) 5158(#34) 5164(#35) 
 TYPE = DATUM POINT
 NAME = PNT4

 MEMBER (5, 1) IN A (5 X 1) DIM GENERAL PATTERN
    FEATURE IS IN LAYER(S) :
      POINTS - OPERATION = BLANKED
 MAIN PATTERN DIMENSIONS:
 INCREMENTAL PATTERN DIMENSIONS:
 d339 = .400 LEN
 d340 = .425
 END ADD


 ADD FEATURE (initial number 40)
 INTERNAL FEATURE ID  5415
 PARENTS = 20(#2) 5164(#35) 2450(#18) 5158(#34) 

 PROTRUSION: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Sketched Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   

 TRAJECTORY = SKETCHED
 SECTION NAME = S2D0040 
 SECTION NAME = S2D0041 
 LEADER OF A (5 X 1) REF GENERAL PATTERN
 MAIN PATTERN DIMENSIONS:
 d365 = 1.100
 d366 = 4.000R
 d368 = .120
 d369 = .200R
 d372 = .300 Dia
 END ADD


 ADD FEATURE (initial number 41)
 INTERNAL FEATURE ID  5466
 PARENTS = 20(#2) 5164(#35) 5415(#40) 2450(#18) 5158(#34) 

 PROTRUSION: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Sketched Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   

 TRAJECTORY = SKETCHED
 SECTION NAME = S2D0040 
 SECTION NAME = S2D0041 
 MEMBER (2, 1) IN A (5 X 1) REF GENERAL PATTERN
 MAIN PATTERN DIMENSIONS:
 d365 = 1.100
 d366 = 4.000R
 d368 = .120
 d369 = .200R
 d372 = .300 Dia
 END ADD


 ADD FEATURE (initial number 42)
 INTERNAL FEATURE ID  5467
 PARENTS = 20(#2) 5164(#35) 5415(#40) 2450(#18) 5158(#34) 

 PROTRUSION: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Sketched Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   

 TRAJECTORY = SKETCHED
 SECTION NAME = S2D0040 
 SECTION NAME = S2D0041 
 MEMBER (3, 1) IN A (5 X 1) REF GENERAL PATTERN
 MAIN PATTERN DIMENSIONS:
 d365 = 1.100
 d366 = 4.000R
 d368 = .120
 d369 = .200R
 d372 = .300 Dia
 END ADD


 ADD FEATURE (initial number 43)
 INTERNAL FEATURE ID  5468
 PARENTS = 20(#2) 5164(#35) 5415(#40) 2450(#18) 5158(#34) 

 PROTRUSION: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Sketched Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   

 TRAJECTORY = SKETCHED
 SECTION NAME = S2D0040 
 SECTION NAME = S2D0041 
 MEMBER (4, 1) IN A (5 X 1) REF GENERAL PATTERN
 MAIN PATTERN DIMENSIONS:
 d365 = 1.100
 d366 = 4.000R
 d368 = .120
 d369 = .200R
 d372 = .300 Dia
 END ADD


 ADD FEATURE (initial number 44)
 INTERNAL FEATURE ID  5469
 PARENTS = 20(#2) 5164(#35) 5415(#40) 2450(#18) 5158(#34) 

 PROTRUSION: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Sketched Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   

 TRAJECTORY = SKETCHED
 SECTION NAME = S2D0040 
 SECTION NAME = S2D0041 
 MEMBER (5, 1) IN A (5 X 1) REF GENERAL PATTERN
 MAIN PATTERN DIMENSIONS:
 d365 = 1.100
 d366 = 4.000R
 d368 = .120
 d369 = .200R
 d372 = .300 Dia
 END ADD


 ADD FEATURE (initial number 45)
 INTERNAL FEATURE ID  11421
 PARENTS = 1(#1) 20(#2) 2394(#16) 2392(#3) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   Both Sides                                         Defined   
  2  Section      Sk. plane - Surface DTM2 of feat #3 (DATUM PLANE)  Defined   
  3  MaterialSide                                                    Defined   
  4  Depth        Through All, Through All                           Defined   

 SECTION NAME = S2D0001 
 OPEN SECTION
 FEATURE'S DIMENSIONS:
 d678 = 3.000
 END ADD


 ADD FEATURE (initial number 46)
 INTERNAL FEATURE ID  3516
 PARENTS = 2392(#3) 2394(#16) 20(#2) 3027(#4) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  MaterialSide Inside section                                     Defined   
  4  Direction                                                       Defined   
  5  Depth        Through All                                        Defined   

 SECTION NAME = S2D0004 
    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d274 = .35
 d277 = .325 Dia
 d278 = .775
 d282 = .325 Dia
 d455 = .455
 d468 = .325 Dia
 d470 = .325
 d685 = .600
 d686 = .175
 d687 = .200
 END ADD


 ADD FEATURE (initial number 47)
 INTERNAL FEATURE ID  3677
 PARENTS = 2419(#17) 3516(#46) 20(#2) 2392(#3) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  MaterialSide Inside section                                     Defined   
  4  Direction                                                       Defined   
  5  Depth        Through All                                        Defined   

 SECTION NAME = S2D0027 
    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d294 = .325
 d295 = .325 Dia
 d296 = .325
 d297 = 1.225
 END ADD


 ADD FEATURE (initial number 48)
 INTERNAL FEATURE ID  3620
 PARENTS = 2419(#17) 20(#2) 2392(#3) 3677(#47) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  MaterialSide Inside section                                     Defined   
  4  Direction                                                       Defined   
  5  Depth        Through All                                        Defined   

 SECTION NAME = S2D0028 
 FEATURE'S DIMENSIONS:
 d288 = .375
 d291 = .300
 d299 = .250
 d300 = .500
 d301 = 1.625
 END ADD


 ADD FEATURE (initial number 49)
 INTERNAL FEATURE ID  3718
 PARENTS = 2419(#17) 3620(#48) 20(#2) 2392(#3) 

 SURFACE: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   Both Sides, Open Ends                              Defined   
  2  Section      Sk. plane - Surface DTM2 of feat #3 (DATUM PLANE)  Defined   
  3  Depth        Symmetrical Blind, depth = 10                      Defined   

 SECTION NAME = S2D0004 
 OPEN SECTION
 FEATURE'S DIMENSIONS:
 d304 = 10.000
 d305 = 10.00
 END ADD


 ADD FEATURE (initial number 50)
 INTERNAL FEATURE ID  3736
 PARENTS = 3620(#48) 3718(#49) 
 TYPE = REPLACED SURFACE

 END ADD


 ADD FEATURE (initial number 51)
 INTERNAL FEATURE ID  4641
 PARENTS = 1(#1) 20(#2) 22(#5) 1621(#14) 2392(#3) 

 PROTRUSION: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  Direction                                                       Defined   
  4  Depth        Upto Surface                                       Defined   

 SECTION NAME = S2D0004 
 FEATURE'S DIMENSIONS:
 d328 = .850
 d329 = .500
 d330 = .400
 d688 = 1.575
 END ADD


 ADD FEATURE (initial number 52)
 INTERNAL FEATURE ID  4690
 PARENTS = 4641(#51) 

 ROUND: General
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Round Type   Simple                                             Defined   
  2  Attributes   Constant, Edge Chain                               Defined   
  3  References                                                      Defined   
  4  Radius       Value = 0.2500                                     Defined   
  5  Attach Type  Make Solid - Feature has solid geometry            Defined   

 FEATURE'S DIMENSIONS:
 d333 = .25R
 END ADD


 ADD FEATURE (initial number 53)
 INTERNAL FEATURE ID  4758
 PARENTS = 1621(#14) 4641(#51) 

 ROUND: General
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Round Type   Simple                                             Defined   
  2  Attributes   Constant, Edge Chain                               Defined   
  3  References                                                      Defined   
  4  Radius       Value = 0.0500                                     Defined   
  5  Attach Type  Make Solid - Feature has solid geometry            Defined   

 FEATURE'S DIMENSIONS:
 d334 = .050R
 END ADD


 ADD FEATURE (initial number 54)
 INTERNAL FEATURE ID  4899
 PARENTS = 3620(#48) 3736(#50) 

 ROUND: General
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Round Type   Simple                                             Defined   
  2  Attributes   Constant, Edge Chain                               Defined   
  3  References                                                      Defined   
  4  Radius       Value = 0.2500                                     Defined   
  5  Attach Type  Same Quilt - Feature intersects ref quilt          Defined   

 FEATURE'S DIMENSIONS:
 d335 = .25R
 END ADD


 ADD FEATURE (initial number 55)
 INTERNAL FEATURE ID  4931
 PARENTS = 3620(#48) 3736(#50) 

 ROUND: General
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Round Type   Simple                                             Defined   
  2  Attributes   Constant, Edge Chain                               Defined   
  3  References                                                      Defined   
  4  Radius       Value = 0.1250                                     Defined   
  5  Attach Type  Same Quilt - Feature intersects ref quilt          Defined   

 FEATURE'S DIMENSIONS:
 d336 = .13R
 END ADD


 ADD FEATURE (initial number 56)
 INTERNAL FEATURE ID  4978
 PARENTS = 3620(#48) 3736(#50) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d337 = .05R
 END ADD


 ADD FEATURE (initial number 57)
 INTERNAL FEATURE ID  5753
 PARENTS = 3620(#48) 3736(#50) 4899(#54) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d379 = .25R
 END ADD


 ADD FEATURE (initial number 58)
 INTERNAL FEATURE ID  5764
 PARENTS = 3620(#48) 3718(#49) 3736(#50) 4899(#54) 4931(#55) 5753(#57) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d380 = .05R
 END ADD


 ADD FEATURE (initial number 59)
 INTERNAL FEATURE ID  13551
 PARENTS = 2394(#16) 

 ROUND: General
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Round Type   Simple                                             Defined   
  2  Attributes   Constant, Edge Chain                               Defined   
  3  References                                                      Defined   
  4  Radius       Value = 0.0625                                     Defined   
  5  Attach Type  Make Solid - Feature has solid geometry            Defined   

 FEATURE'S DIMENSIONS:
 d735 = .0625R
 END ADD


 ADD FEATURE (initial number 60)
 INTERNAL FEATURE ID  11763
 PARENTS = 1(#1) 

 SHELL: Shell
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Remove Surfs                                                    Defined   
  2  Thickness    0.0500                                             Defined   
  3  Spec Thick                                                      Optional  

 FEATURE'S DIMENSIONS:
 d690 = .050 O_THICK
 END ADD


 ADD FEATURE (initial number 61)
 INTERNAL FEATURE ID  12852
 PARENTS = 2394(#16) 
 TYPE = DATUM PLANE
 NAME = DTM15

    FEATURE IS IN LAYER(S) :
      DTM_PLNS - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d702 = .75
 END ADD


 ADD SUPPRESSED FEATURE
 INTERNAL FEATURE ID  13664
 PARENTS = 75(#8) 227(#13) 1621(#14) 
 TYPE = ROUND - EDGE - CONSTANT RADIUS

 FEATURE'S DIMENSIONS:
 d742 = .02R
 END ADD


 ADD FEATURE (initial number 62)
 INTERNAL FEATURE ID  4585
 PARENTS = 75(#8) 227(#13) 1621(#14) 2392(#3) 20(#2) 10501(#9) 10572(#12) 
           11763(#60) 

 PROTRUSION: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface DTM1 of feat #2 (DATUM PLANE)  Defined   
  3  Direction                                                       Defined   
  4  Depth        Blind, depth = 0.18                                Defined   

 SECTION NAME = S2D0004 
 FEATURE'S DIMENSIONS:
 d318 = .425 Dia
 d321 = .140
 d322 = .18
 d693 = .750
 END ADD


 ADD FEATURE (initial number 63)
 INTERNAL FEATURE ID  6407
 PARENTS = 4585(#62) 20(#2) 2392(#3) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   Both Sides                                         Defined   
  2  Section      Sk. plane - Surface DTM1 of feat #2 (DATUM PLANE)  Defined   
  3  MaterialSide Inside section                                     Defined   
  4  Depth        Through All, Through All                           Defined   

 SECTION NAME = S2D0006 
    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d383 = .210 Dia
 END ADD


 ADD FEATURE (initial number 64)
 INTERNAL FEATURE ID  12628
 PARENTS = 2394(#16) 
 TYPE = DATUM AXIS
 NAME = A_29

    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 65)
 INTERNAL FEATURE ID  12856
 PARENTS = 20(#2) 
 TYPE = DATUM PLANE
 NAME = DTM16

    FEATURE IS IN LAYER(S) :
      DTM_PLNS - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d703 = 1.00
 END ADD


 ADD FEATURE (initial number 66)
 INTERNAL FEATURE ID  8557
 PARENTS = 2394(#16) 12628(#64) 

 HOLE: Straight
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Placmnt Type Coaxial                                            Defined   
  2  Placmnt Refs                                                    Defined   
  3  Side         One Side                                           Defined   
  4  Depth        Blind, depth = 0.5                                 Defined   
  5  Diameter     D = 0.25                                           Defined   
  6  Direction                                                       Defined   

 PLACEMENT = COAXIAL
 FEATURE'S DIMENSIONS:
 d499 = .50
 d500 = .25 Dia
 END ADD


 ADD FEATURE (initial number 67)
 INTERNAL FEATURE ID  7943
 PARENTS = 2392(#3) 20(#2) 12628(#64) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface DTM1 of feat #2 (DATUM PLANE)  Defined   
  3  MaterialSide Inside section                                     Defined   
  4  Direction                                                       Defined   
  5  Depth        Through All                                        Defined   

 SECTION NAME = S2D0004 
 FEATURE'S DIMENSIONS:
 d479 = 1.000 Dia
 d480 = .090
 d481 = .090
 d482 = .135
 d485 = .600
 d486 = .090
 d487 = .135
 d696 = .200
 END ADD


 ADD FEATURE (initial number 68)
 INTERNAL FEATURE ID  8136
 PARENTS = 7943(#67) 20(#2) 2392(#3) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   Both Sides                                         Defined   
  2  Section      Sk. plane - Surface DTM1 of feat #2 (DATUM PLANE)  Defined   
  3  MaterialSide Inside section                                     Defined   
  4  Depth        Through All, Through All                           Defined   

 SECTION NAME = S2D0047 
 LEADER OF A (2 X 1) DIM GENERAL PATTERN
 MAIN PATTERN DIMENSIONS:
 INCREMENTAL PATTERN DIMENSIONS:
 d488 = .135
 d489 = .090
 d493 = .23
 END ADD


 ADD FEATURE (initial number 69)
 INTERNAL FEATURE ID  8389
 PARENTS = 7943(#67) 8136(#68) 20(#2) 2392(#3) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   Both Sides                                         Defined   
  2  Section      Sk. plane - Surface DTM1 of feat #2 (DATUM PLANE)  Defined   
  3  MaterialSide Inside section                                     Defined   
  4  Depth        Through All, Through All                           Defined   

 SECTION NAME = S2D0047 
 MEMBER (2, 1) IN A (2 X 1) DIM GENERAL PATTERN
 MAIN PATTERN DIMENSIONS:
 INCREMENTAL PATTERN DIMENSIONS:
 d488 = .135
 d489 = .090
 d493 = .23
 END ADD


 ADD FEATURE (initial number 70)
 INTERNAL FEATURE ID  12732
 PARENTS = 3516(#46) 
 TYPE = DATUM AXIS
 NAME = A_30

    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 71)
 INTERNAL FEATURE ID  12736
 PARENTS = 3516(#46) 
 TYPE = DATUM AXIS
 NAME = A_31

    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 72)
 INTERNAL FEATURE ID  12740
 PARENTS = 3516(#46) 

 HOLE: Straight
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Placmnt Type Coaxial                                            Defined   
  2  Placmnt Refs                                                    Defined   
  3  Side         One Side                                           Defined   
  4  Depth        Through All                                        Defined   
  5  Diameter     D = 0.21                                           Defined   
  6  Direction                                                       Defined   

 PLACEMENT = COAXIAL
    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d697 = .210 Dia
 END ADD


 ADD FEATURE (initial number 73)
 INTERNAL FEATURE ID  12760
 PARENTS = 3516(#46) 12732(#70) 

 HOLE: Straight
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Placmnt Type Coaxial                                            Defined   
  2  Placmnt Refs                                                    Defined   
  3  Side         One Side                                           Defined   
  4  Depth        Through All                                        Defined   
  5  Diameter     D = 0.21                                           Defined   
  6  Direction                                                       Defined   

 PLACEMENT = COAXIAL
    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d698(d697) = .210 Dia

 END ADD


 ADD FEATURE (initial number 74)
 INTERNAL FEATURE ID  12779
 PARENTS = 3516(#46) 12736(#71) 

 HOLE: Straight
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Placmnt Type Coaxial                                            Defined   
  2  Placmnt Refs                                                    Defined   
  3  Side         One Side                                           Defined   
  4  Depth        Through All                                        Defined   
  5  Diameter     D = 0.21                                           Defined   
  6  Direction                                                       Defined   

 PLACEMENT = COAXIAL
    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d699(d697) = .210 Dia

 END ADD


 ADD FEATURE (initial number 75)
 INTERNAL FEATURE ID  12802
 PARENTS = 3677(#47) 

 HOLE: Straight
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Placmnt Type Coaxial                                            Defined   
  2  Placmnt Refs                                                    Defined   
  3  Side         One Side                                           Defined   
  4  Depth        Through All                                        Defined   
  5  Diameter     D = 0.21                                           Defined   
  6  Direction                                                       Defined   

 PLACEMENT = COAXIAL
    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 FEATURE'S DIMENSIONS:
 d700(d697) = .210 Dia

 END ADD


 ADD SUPPRESSED FEATURE
 INTERNAL FEATURE ID  13230
 PARENTS = 2394(#16) 2419(#17) 3516(#46) 10857(#26) 10971(#31) 11763(#60) 
           12852(#61) 1(#1) 2392(#3) 

 PROTRUSION: Extrude, Thin
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface of feat #1 (FIRST FEATURE)     Defined   
  3  MaterialSide                                                    Defined   
  4  Thickness    Thickness = 0.06                                   Defined   
  5  Direction                                                       Defined   
  6  Depth        Through Next                                       Defined   

 SECTION NAME = S2D0007 
 FEATURE'S DIMENSIONS:
 d715 = .200
 d716 = .06 THICK
 END ADD

 IF PART_TYPE == 2

     ADD FEATURE
     INTERNAL FEATURE ID  14131
     PARENTS = 2394(#16) 2419(#17) 3027(#4) 3029(#27) 10857(#26) 10931(#30) 
               10971(#31) 11763(#60) 13230(*) 13551(#59) 1(#1) 2392(#3) 

 PROTRUSION: Extrude, Thin
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface of feat #1 (FIRST FEATURE)     Defined   
  3  MaterialSide                                                    Defined   
  4  Thickness    Thickness = 0.05                                   Defined   
  5  Direction                                                       Defined   
  6  Depth        Through Next                                       Defined   

     SECTION NAME = S2D0005 
     FEATURE'S DIMENSIONS:
     d790 = .500
     d791 = .05 THICK
     END ADD


     ADD FEATURE
     INTERNAL FEATURE ID  14176
     PARENTS = 20(#2) 2394(#16) 1(#1) 14131(*) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  MaterialSide                                                    Defined   
  4  Direction                                                       Defined   
  5  Depth        Through Next                                       Defined   

     SECTION NAME = S2D0006 
     OPEN SECTION
     FEATURE'S DIMENSIONS:
     d794 = .760
     d795 = .150
     END ADD
 END IF


 ADD SUPPRESSED FEATURE
 INTERNAL FEATURE ID  13278
 PARENTS = 2394(#16) 3516(#46) 11763(#60) 13230(*) 1(#1) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  MaterialSide Inside section                                     Defined   
  4  Direction                                                       Defined   
  5  Depth        Upto Surface                                       Defined   

 SECTION NAME = S2D0007 
 END ADD


 ADD FEATURE (initial number 76)
 INTERNAL FEATURE ID  13342
 PARENTS = 2392(#3) 12628(#64) 1(#1) 3027(#4) 

 PROTRUSION: Extrude, Thin
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  MaterialSide                                                    Defined   
  4  Thickness    Thickness = 0.0625                                 Defined   
  5  Direction                                                       Defined   
  6  Depth        Through Next                                       Defined   

 SECTION NAME = S2D0009 
 FEATURE'S DIMENSIONS:
 d720 = .25
 d722 = .200
 d723 = .200
 d724 = .06 THICK
 END ADD


 ADD FEATURE (initial number 77)
 INTERNAL FEATURE ID  13384
 PARENTS = 2394(#16) 7943(#67) 8557(#66) 13342(#76) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface of feat #76 (PROTRUSION)       Defined   
  3  MaterialSide                                                    Defined   
  4  Direction                                                       Defined   
  5  Depth        Through Next                                       Defined   

 SECTION NAME = S2D0010 
 OPEN SECTION
 FEATURE'S DIMENSIONS:
 d726 = .0625
 END ADD


 ADD FEATURE (initial number 78)
 INTERNAL FEATURE ID  13413
 PARENTS = 1(#1) 75(#8) 227(#13) 2162(#15) 10572(#12) 11763(#60) 2392(#3) 
           20(#2) 

 PROTRUSION: Extrude, Thin
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section                                                         Defined   
  3  MaterialSide                                                    Defined   
  4  Thickness    Thickness = 0.0626                                 Defined   
  5  Direction                                                       Defined   
  6  Depth        Through Next                                       Defined   

 SECTION NAME = S2D0001 
 FEATURE'S DIMENSIONS:
 d734 = .06 THICK
 d743 = .25
 d745 = .075
 d746 = .500
 d747 = .200
 END ADD


 ADD FEATURE (initial number 79)
 INTERNAL FEATURE ID  13790
 PARENTS = 1(#1) 3029(#27) 11763(#60) 

 CUT: Extrude
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface of feat #60 (SHELL)            Defined   
  3  MaterialSide                                                    Defined   
  4  Direction                                                       Defined   
  5  Depth        Through Next                                       Defined   

 SECTION NAME = S2D0001 
 OPEN SECTION
 FEATURE'S DIMENSIONS:
 d749 = .63
 d750 = .13
 d751 = .43
 END ADD


 ADD FEATURE (initial number 80)
 INTERNAL FEATURE ID  13829
 PARENTS = 1(#1) 3029(#27) 7516(#28) 7554(#29) 11763(#60) 13790(#79) 

 PROTRUSION: Extrude, Thin
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Attributes   One Side                                           Defined   
  2  Section      Sk. plane - Surface of feat #1 (FIRST FEATURE)     Defined   
  3  MaterialSide                                                    Defined   
  4  Thickness    Thickness = 0.05                                   Defined   
  5  Direction                                                       Defined   
  6  Depth        Through Next                                       Defined   

 SECTION NAME = S2D0002 
 FEATURE'S DIMENSIONS:
 d754 = .45
 d755 = .06R
 d756 = .05 THICK
 END ADD


 ADD FEATURE (initial number 81)
 INTERNAL FEATURE ID  13914
 PARENTS = 1(#1) 75(#8) 227(#13) 1621(#14) 2450(#18) 2515(#19) 4585(#62) 
           10501(#9) 10572(#12) 14592(#33) 
 TYPE = CURVE - COMPOSITE

    FEATURE IS IN LAYER(S) :
      CURVES - OPERATION = NORMAL
 END ADD


 ADD FEATURE (initial number 82)
 INTERNAL FEATURE ID  13927
 PARENTS = 1(#1) 75(#8) 227(#13) 1621(#14) 3029(#27) 7516(#28) 10528(#10) 
           10562(#11) 10931(#30) 13790(#79) 
 TYPE = CURVE - COMPOSITE

 END ADD


 ADD FEATURE (initial number 83)
 INTERNAL FEATURE ID  13938
 PARENTS = 1(#1) 2394(#16) 2450(#18) 5415(#40) 8557(#66) 11421(#45) 13551(#59) 
 TYPE = CURVE - COMPOSITE

 END ADD


 ADD FEATURE (initial number 84)
 INTERNAL FEATURE ID  13948
 PARENTS = 13927(#82) 

 PROTRUSION: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Selected Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   

 SECTION NAME =  
 SECTION NAME = S2D0003 
 FEATURE'S DIMENSIONS:
 d759 = .01
 d760 = 2.0
 d761 = 4.0
 d762 = .03
 d763 = .03
 END ADD


 ADD FEATURE (initial number 85)
 INTERNAL FEATURE ID  14006
 PARENTS = 13914(#81) 

 PROTRUSION: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Selected Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   

 SECTION NAME =  
 SECTION NAME = S2D0008 
 FEATURE'S DIMENSIONS:
 d773 = .010
 d774 = 2.000
 d775 = 4.000
 d776 = .025
 d777 = .025
 d800 = .001
 END ADD


 ADD FEATURE (initial number 86)
 INTERNAL FEATURE ID  14038
 PARENTS = 13938(#83) 

 PROTRUSION: Sweep
 
 NO. ELEMENT NAME    INFO                                            STATUS
 --- ------------ -----------                                        ------
  1  Trajectory   Selected Trajectory                                Defined   
  2  Attributes   Free Ends                                          Defined   
  3  Section                                                         Defined   

 SECTION NAME =  
 SECTION NAME = S2D0003 
 FEATURE'S DIMENSIONS:
 d780(d773) = .010
 d781(d774) = 2.000
 d782(d775) = 4.000
 d783(d776) = .025
 d784(d777) = .025

 END ADD


 ADD FEATURE (initial number 87)
 INTERNAL FEATURE ID  14396
 PARENTS = 1(#1) 22(#5) 75(#8) 227(#13) 1621(#14) 4585(#62) 10501(#9) 10572(#12) 
           11763(#60) 
 TYPE = COSMETIC

 SECTION NAME = S2D0002 
    FEATURE IS IN LAYER(S) :
      COSMO - OPERATION = BLANKED
 END ADD


 ADD SUPPRESSED FEATURE
 INTERNAL FEATURE ID  14512
 PARENTS = 3516(#46) 11763(#60) 13230(*) 13278(*) 
 TYPE = COSMETIC

 SECTION NAME = S2D0002 
 END ADD


 ADD FEATURE (initial number 88)
 INTERNAL FEATURE ID  14537
 PARENTS = 1(#1) 1621(#14) 2450(#18) 5468(#43) 8557(#66) 11421(#45) 11763(#60) 
 TYPE = DATUM POINT
 NAME = no_name

 END ADD


 ADD FEATURE (initial number 89)
 INTERNAL FEATURE ID  14542
 PARENTS = 1(#1) 14537(#88) 
 TYPE = DATUM POINT
 NAME = no_name

 FEATURE'S DIMENSIONS:
 d813 = .75
 d814 = .75
 END ADD


 ADD FEATURE (initial number 90)
 INTERNAL FEATURE ID  14545
 PARENTS = 3027(#4) 14537(#88) 14542(#89) 
 TYPE = DATUM POINT
 NAME = no_name

 FEATURE'S DIMENSIONS:
 d815 = 1.75
 d816 = .75
 d817 = .75
 END ADD


 ADD FEATURE (initial number 91)
 INTERNAL FEATURE ID  14549
 PARENTS = 1(#1) 14545(#90) 
 TYPE = DATUM POINT
 NAME = PNT14

 FEATURE'S DIMENSIONS:
 d818 = .75
 END ADD


 ADD FEATURE (initial number 92)
 INTERNAL FEATURE ID  14551
 PARENTS = 20(#2) 14542(#89) 14545(#90) 
 TYPE = DATUM PLANE
 NAME = DTM21

    FEATURE IS IN LAYER(S) :
      DTM_PLNS - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 93)
 INTERNAL FEATURE ID  14553
 PARENTS = 14545(#90) 14551(#92) 
 TYPE = DATUM AXIS
 NAME = A_36

    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 94)
 INTERNAL FEATURE ID  14557
 PARENTS = 14545(#90) 14551(#92) 
 TYPE = DATUM AXIS
 NAME = A_37

    FEATURE IS IN LAYER(S) :
      DTM_AXES - OPERATION = BLANKED
 END ADD


 ADD FEATURE (initial number 95)
 INTERNAL FEATURE ID  14561
 PARENTS = 14551(#92) 14553(#93) 14557(#94) 
 TYPE = DATUM POINT
 NAME = PNT15

 END ADD

MASSPROP
END MASSPROP

