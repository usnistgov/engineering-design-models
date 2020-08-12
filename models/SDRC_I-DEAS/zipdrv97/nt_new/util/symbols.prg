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
c :---------------------------------
c : DIMENSION AUTOSCALE AFTER PRESELECT, SET AS DEFAULT - add
c :--------------------------------------------------------
k : /option gl del
k : add
K :
k : /option gl e
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
c :----------------------
c : CONSTRAINT VISIBILITY TOGGLE  - CVV
C :----------------------------------
K : /option gl del
K : cvv
K :
K : /OPTION GL E
K : cvv
K : "/do df wbf v co;;okay;okay;"
c :----------------------
c : COORDINATE SYSTEM VISIBILITY TOGGLE  - CSS
C :----------------------------------
K : /option gl del
K : css
K :
K : /OPTION GL E
K : css
K : "/do df paf v rc;;okay;okay;"
c :-----------------------
c : DIMENSION ARROWS OUT  - ARR
C :----------------------------------
K : /option gl del arr
K : 
K :
K : /OPTION GL E
K : arr
K : "/mo ap ar o;;okay;;des"
C :
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
C :---------------------------------------------
C : Translucency on afterpart preselection- TRR
C :---------------------------------------------
k : /o g d
k : trr
k :
k : /o g e
k : trr
K : "/mo ap v ts on;tr 40;;okay;;des"
k :
C :--------------------------------------------
C : Update from libary  -UTD
C : -------------------------------------------
K : /o g d
k : utd
K : 
K : /o g e
k : utd
K : "/ma up sa okay;okay"
K : 
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
k : 
C : ---------------------
C : DELETE FEATURE - DEFE
C : ---------------------
K : /option gl del
K : defe
K : 
K : /option gl e
K : defe
K : "/de fil pm 15 d po"
K :
C : ---------------------
C : Delete Constraints - DCC
C : ---------------------
K : /option gl del
K : dcc
K : 
K : /option gl en
K : dcc
K : "/del fil pm dc 27;pm 32; done; po"
K : 
C : 
C : ---------------------
C : Set Center Line Font & Color - CFF
C : ---------------------
K : /option gl del
K : cff
K : 
K : /option gl e
K : cff
K : "/mo ap color 5 li dashed;okay;des"
C :
C : /OPTION GL E
C : 
C : ---------------------
C : Align Workplane to face - AWW
C : ---------------------
K : /option gl del
K : aww
K : 
K : /option gl e
K : aww
K : "/or al l workplane; pl"
C : 
C : ---------------------
C : Set rotation center - vvc
C : ---------------------
K : /option gl del
K : vvc
K : 
K : /option gl e
K : vvc
K : /li in view ta
K :
C : --------------------
C : Shorthand entity hide
C : --------------------
K : /option gl del
K : eh
K :
K : /option gl e
K : eh
K : /do hi
K :
C : --------------------
C : Shorthand entity translate
C : --------------------
K : /option gl del
K : et
K :
K : /option gl e
K : et
K : /or mo
K : 
C : --------------------
C : Shorthand entity drag
C : --------------------
K : /option gl del
K : ed
K :
K : /option gl e
K : ed
K : /or d
K : 
C : --------------------
C : Shorthand Leader Left
C : --------------------
K : /option gl del
K : lll
K :
K : /option gl e
K : lll
K : "/mo ap lea l;okay;des"
K :
C : --------------------
C : Shorthand Leader Right
C : --------------------
K : /option gl del
K : lrr
K :
K : /option gl e
K : lrr
K : "/mo ap lea r;okay;des"
K :
C : --------------------
C : Shorthand 3 views
C : --------------------
K : /option gl del
K : view3
K :
K : /option gl e
K : view3
K : "/view define enter 3;k 0,0 .65,1;k .65,0 1,.5;k .65,.5 1,1"
K :
C : --------------------
C : Dynamically Orient
C : --------------------
C : /option gl del
C : dyn
C :
C : /option gl e
C : dyn
C : "/ta ma xto tma hd hq op i"
C :
C :
C : --------------------
C : Set Color of Part - CCC
C : --------------------
K : /option gl del
K : ccc
K :
K : /option gl e
K : ccc
K : "/mo ap cs on co 8;okay;des;"
K :
C :
C : ---------------------------
C : Turn on 3DVG
C : ---------------------------
K : /option gl del 
K : vgx
K : 
K : /option gl e
K : vgx
K : "/ta mm mo qery vg on"
K : 
C : 
C : ---------------------------
C : flow-show flow vectors for esc solution
C : ---------------------------
K : /option gl del 
K : flow
K : 
K : /option gl e
K : flow
K : "/f pr r fil 'flow.prg';okay"
K : 
C :
C : ---------------------------
C : temps-show board temperatures for esc solution
C : ---------------------------
K : /option gl del 
K : temps
K : 
K : /option gl e
K : temps
K : "/f pr r fil 'temps.prg';okay"
K : 
C :
C : ---------------------------
C : prune-show Hierarchy form
C : ---------------------------
K : /option gl del 
K : prune
K : 
K : /option gl e
K : prune
K : #execute "xwud -in 'prune.xwd' -geometry 692x565-3+243 &"
K : 
C :
C : ---------------------------
C : final1
C : ---------------------------
K : /option gl del 
K : final1
K : 
K : /option gl e
K : final1
K : #execute "xwud -in '../movies/final1.xwd' -geometry 1069x828+2+1 &"
C :
C : ---------------------------
C : final2
C : ---------------------------
K : /option gl del 
K : final2
K : 
K : /option gl e
K : final2
K : #execute "xwud -in '../movies/final2.xwd' -geometry 1069x828+1+0 &"
K : 
C :
C : ---------------------------
C : final3
C : ---------------------------
K : /option gl del 
K : final3
K : 
K : /option gl e
K : final3
K : #execute "xwud -in '../movies/final3.xwd' -geometry 1069x826+1+2 &"
C :
C : ---------------------------
C : final4
C : ---------------------------
K : /option gl del 
K : final4
K : 
K : /option gl e
K : final4
K : #execute "xwud -in '../movies/final4.xwd' -geometry 1069x826+1+2 &"
C :
C : ---------------------------
C : final5
C : ---------------------------
K : /option gl del 
K : final5
K : 
K : /option gl e
K : final5
K : #execute "xwud -in '../movies/final5.xwd' -geometry 1069x826+1+2 &"
C :
C : ---------------------------
C : final6
C : ---------------------------
K : /option gl del 
K : final6
K : 
K : /option gl e
K : final6
K : #execute "xwud -in '../movies/final6.xwd' -geometry 1069x826+1+2 &"
C :
C : ---------------------------
C : final7
C : ---------------------------
K : /option gl del 
K : final7
K : 
K : /option gl e
K : final7
K : #execute "xwud -in '../movies/final7.xwd' -geometry 1069x826+1+2 &"
C :
K : #echo all
E : **** END OF SESSION ****
