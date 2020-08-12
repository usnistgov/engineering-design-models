K : $ return
K : $ $ $ /ta ME
C : 
C : ----- Set the Global Element length to 4mm.
K : $ mpos :; /dfn so
K : *
K :  EL 4
K :  ET PT
K : OKAY
K : $ return
C : 
C : ----- Set the curve deviation to none.
K : $ mpos :; /dfn sh
K : *
K :  F
K :  CB N
K : OKAY
K : OKAY
K : $ return
C : 
C : ----- Set the auto quality checks on.
K : $ mpos :; /cm se
K :  AC ON
K :  TSI ON
K :  TDI ON
K : OKAY
K : $ return
C : 
C : ----- Turn off all the FE data except the Face loads and Restraints.
K : $ mpos :; /do df
K :  TX1
K :  EN AOO
K :  ! VI LFL ON
K :  ! VI RL ON
K : OKAY
K : OKAY
K : $ return
C : 
C : ----- Switch to Model Solution and create a new Solution Set.
K : $ $ $ /ta MO
K : $ mpos :; /ss
K :  CRE
K : OKAY
K : CANC
K : $ return
E : **** END OF SESSION ****
