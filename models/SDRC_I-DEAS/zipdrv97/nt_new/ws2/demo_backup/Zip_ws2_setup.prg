C :
C : Zip_ws2_setup.prg
C : QA'd for MS6
C :
K : $ return
K : $ mpos :; /O U U
K : mm
K : $ return
K : $ /mo ap
K : D
K : 
K :  UP
K :  PD 0
K : OKAY
K : OKAY
K : 
K : /man pu all
K : $ mpos :; /do df
K :  TX1
K :  EN AOO
K : OKAY
K :  PAF
K :  V LT OF
K :  ! V CL OF
K :  ! V CP OF
K : OKAY
K :  ASF
K :  V ATN OF
K : OKAY
K :  AA OF
K : OKAY
K : $ return
K :
K : 
K : $ mpos :; /O B
K : ?
K : 17
K : $ return
K : $ /or mo
K : LAB
K : workplane
K : 
K : 
K : 0 0 45
K : DON
K : $ $ $ /ta xx DE
K : $ mpos :; /DO LH
K :  LI
K :  I OF
K :  T OF
K : OKAY
K : OKAY
K : $ return
K : $ mpos :; /DO LI
K :  E 1;
K :  CU
K :  E 4;
K :  CU
K : CANC
K : $ return
K : $ mpos :; /v v pe of; e 3 4 5 0; okay
K : $ return
K : $ mpos :; /do so; ; dt shh appl canc
K : $ return
K : $ mpos :; /ma ma
K :  ET DC 1;
K :  ET DC 2;
K :  ET DC 3;
K :  ET DC 4;
K :  ET DC 6;
K :  ET DC 7;
K :  ET DC 8;
K : CANC
K : 
C :
K : /f pr r fil ..\..\util\symbols.prg okay
K : /cl
K : #output "Model File Saved As 'Zip_ws2_start'"
K : #output "Automatically Exiting..."
C :
K : #wait 5
K : $ mpos :; /F SA
K :  FIL Zip_ws2_start
K : OKAY
K : $ return
K : $ mpos :; EXIT
K : N
E : **** END OF SESSION ****
