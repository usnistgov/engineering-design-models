C :
C :-----------------------------
c : GLOBAL SYMBOL DEFINITION   -
c :-----------------------------
C :
C :
C :---------------------------------------------
C : OA routine for Valve called by valve icon  -
C :---------------------------------------------
K : /o g d
K : val
K : 
K : /o g e
K : val
K : "/oaxx run VALVE"
K : 
C : --------------------------
C : OA routine for Spreadsheet
C : -------------------------
K : /o g d
K : sss
K : 
K : /o g e
K : sss
K : "/oaxx run SS"
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
