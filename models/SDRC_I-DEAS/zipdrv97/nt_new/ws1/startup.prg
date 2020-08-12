C :
C : startup.prg - NT version/1/30/1998/I-deas MS6
C : process assembly
C :
K :
K : /up proc
K : 
C : -----------------------------
C : Turn on Stop at Intersection
C : -----------------------------
K :  /mo e
K : SE st y
K :  okay
K : done
K : /
C :----------------------
C : Turn on backlighting
C :-----------------------
K : 
K :  /DO SO
K :  HS
K :  HB ON
K : OKAY
K : OKAY
K : 
C :
C : Adopt sections
C :
K :  /MA IT
K :  CC
K :  CA sections
K : OKAY
K :  AD
K :  TS
K :  TA DC 1;
K :  TA 11;
K :  MR
K : OKAY
K :  FIL sections\Channel.ssec
K :  UFIL SDRC_channel.ssec
K :  LCM C
K :  CA sections
K : APPL
K :  FIL sections\Cross.ssec
K :  UFIL SDRC_cross.ssec
K : APPL
K :  FIL sections\I-beam.ssec
K :  UFIL SDRC_ibeam.ssec
K : APPL
K :  FIL sections\L_bracket.ssec
K :  UFIL SDRC_lbkt.ssec
K : APPL
K :  FIL sections\box.ssec
K :  UFIL SDRC_box.ssec
K : APPL
K :  FIL sections\duct.ssec
K :  UFIL SDRC_duct.ssec
K : APPL
K :  FIL sections\tee.ssec
K :  UFIL SDRC_tee.ssec
K : APPL
K :  FIL sections\tube.ssec
K :  UFIL SDRC_tube.ssec
K : APPL
K :  FIL sections\ellipse.ssec
K :  UFIL SDRC_ellipse.ssec
K : APPL
K : OKAY
K : OKAY
K : 
C :
C : Adopt picture file help screens
C :
K :  /MA IT
K :  CL
K :  LB Help_screens
K : OKAY
K :  AD
K :  TS
K :  TA DC 32;
K :  TA 35;
K :  MR
K : OKAY
K :  FIL sections\box.pff
K :  UFIL SDRC_box
K :  LCM L
K :  LB Help_screens
K : APPL
K :  FIL sections\channel.pff
K :  UFIL SDRC_channel.pff
K : APPL
K :  FIL sections\cross.pff
K :  UFIL SDRC_cross.pff
K : APPL
K :  FIL sections\duct.pff
K :  UFIL SDRC_duct.pff
K : APPL
K :  FIL sections\ibeam.pff
K :  UFIL SDRC_ibeam.pff
K : APPL
K :  FIL sections\l.pff
K :  UFIL SDRC_Lbeam.pff
K : APPL
K :  FIL sections\t.pff
K :  UFIL SDRC_tee.pff
K : APPL
K :  FIL sections\tube.pff
K :  UFIL SDRC_tube.pff
K : APPL
K :  FIL sections\ellipse.pff
K :  UFIL SDRC_ellipse.pff
K : APPL
K : OKAY
K : OKAY
K :
C :-----------------------------------------------
C : Create help screen library and adopt  
C : ----------------------------------------------
C :
C : Adopt picture file help screens
C :
K : /MA IT
K :  T
K :  TA DC 4;
K :  TA 14;
K :  TA 15;
K :  P
K :  IS 1;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  T
K :  TA DC 15;
K :  TA 18;
K :  P
K :  IS 1;
K : OKAY
K : OKAY
K :  IS 1;
K :  IS 2;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  IS 2;
K : OKAY
K : OKAY
K :  IS 2;
K :  IS 3;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  IS 3;
K : OKAY
K : OKAY
K :  IS 3;
K :  IS 4;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  IS 4;
K : OKAY
K : OKAY
K :  IS 4;
K :  IS 5;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  IS 5;
K : OKAY
K : OKAY
K :  IS 5;
K :  IS 6;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  IS 6;
K : OKAY
K : OKAY
K :  IS 6;
K :  IS 7;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  IS 7;
K : OKAY
K : OKAY
K :  IS 7;
K :  IS 8;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  IS 8;
K : OKAY
K : OKAY
K :  IS 8;
K :  IS 9;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  IS 9;
K : OKAY
K : OKAY
K : OKAY
C :
C : Set default section catalog
C :
K : /ca s
K :  CA
K :  C Zip
K :  L sections
K : OKAY
K : OKAY
K : $ return
K : $ mpos :; /F PR E
E : **** END OF SESSION ****
