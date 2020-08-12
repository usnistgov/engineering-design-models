C :
C :----- Program file created for the Toggle Clamp demo.
C :-----   Used to setup the standard Pivot Pin catalog part with it's
C :-----   associated picture file for preview.
C :
C :-----   Created by:- Guy Wills 7-Feb-97
C :
C :
C :
C :
C :----- Create the Catalog
C :
K : $ /MA IT
K :  CC
K :  CA Standard Parts Catalog
K : OKAY
K : OKAY
C :
C :
C :----- Adpot the Picture file
C :
K : $ /MA IT
K :  AD
K :  TS
K :  SH
K : TA
K : SD
K : SD
K : SD
K : SD
K : SD
K : SD
K : SD
K : SD
K : 103;
K :  MR
K : OKAY
K :  FIL Formed_Pivot_Pin_Original.pff
K :  UFIL Formed_Pivot_Pin
K : OKAY
K : OKAY
C :
C :
C :----- Adopt the standard part file into the catalog
C :
K : $ /MA IT
K :  AD
K :  TS
K :  TU 2;
K :  ML
K :  TA DC 11;
K :  TA 1;
K :  TA 1;
K :  TA DC 1;
K :  TA 10;
K :  MR
K : OKAY
K :  FIL Formed_Pivot_Pin_Original.sprt
K :  UFIL Formed_Pivot_Pin
K :  LCM C
K :  CA Standard Parts Catalog
K : OKAY
K : OKAY
C :
C :
C :----- Create a relationship where the new catalog part DEPENDS ON the 
C :----- picture file (-->).
C :
K : $ /MA IT
K :  FLT
K :  QG I Formed_*
K :  ! QG T
K :  SU
K :  ML
K : OKAY
K : OKAY
K :  IS 1;
K :  DET R
K :  CR
K :  R 1;
K : OKAY
K :  FLT
K :  QG I Formed_*
K :  ! QG T
K :  SU
K :  ML
K : OKAY
K : OKAY
K :  IS 2;
K : OKAY
K : OKAY
K : OKAY
C :
C :
K : exit n
E : **** END OF SESSION ****
