AP: 1 8 Change View
AP: 1 0 0 0 0
AP:  0.07294711     0.01850212    -0.004033746
AP:  1.000000       0.0            0.0
AP:  0.0            1.000000       0.0
AP:  0.0            0.0            1.000000
AP:  0.07905252     1.000000       1.000000       15.00000
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
AP: 2 11 Program File User Preferences
AP: 0 1 0 0 0 0 0 1 0
AP: 1 -0.05000000    -0.05000000     0.05000000     0.05000000
AP: 2  0.0            0.0            0.0            0.0
AP: 3                        1                        0                        0
AP: 4                        0                        1                        0
AP: 5                        0                        0                        1
AP: 6                        0                        0                        0
AP: 7 0 0 0 10 10  0.05000000     0.05000000     0.05000000     30.00000
AP: 8 0
AP: 9 1 1
AP: 10 1 1 0 20   2.000000
K : $ return
K : $ mpos :; /O U U
K : mm
K : $ return
K : $ mpos :; /do df
K :  AA OF
K :  PAF
K :  V CL OF
K :  ! V RC OF
K :  ! V LT OF
K : OKAY
K : OKAY
K : $ return
K : $ mpos :; /DO LH
K :  LI
K :  I OF
K :  T OF
K :  SE OF
K : OKAY
K : OKAY
K : $ return
K : $ mpos :; /DO LH
K :  LI
K :  SI OF
K : OKAY
K : OKAY
K : $ return
K : $ mpos :; /DO SO
K :  HS
K :  HB ON
K : OKAY
K : OKAY
K : $ return
K : /o gl en
K : hide
K : "/gl hi fil pm 2;; at e pf on p 1 done okay po *"
K : /o gl en dots
K : "mpos;;/ta mesh;/do n d;return;redi"
K : /o gl en stars
K : "mpos;;/ta mesh;/do n a;return;redi"
K : 
C :---------------------------------------------
C : Translucency on afterpart preselection- TRR
C :---------------------------------------------
k : /o g d
k : trr
k :
k : /o g e
k : trr
K : "/mo ap v ts on;tr 40;;okay;;des"
K :
C :
K : $ mpos :; /F PR E
E : **** END OF SESSION ****
