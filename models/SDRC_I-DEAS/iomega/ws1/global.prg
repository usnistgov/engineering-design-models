C :-----------------------------
c : GLOBAL SYMBOL DEFINITION   -
c :-----------------------------
K : #ON_ERROR PAUSE
C :-----------------------------
c : GLOBAL SYMBOL DEFINITION   -
c :-----------------------------
C :
C :
c :------------------------
c : CENTERLINES ON/OFF - cll
c :-----------------------
C : /option gl del
K : /o g d
k : cll
K :
C : /option gl e
K : /o g e
k : cll
c : "/do df paf v cl;;cp;;okay;cancel"
k : "/do df paf v cl;;okay;canc;redi"
c :------------------------
c : CENTERPOINTS ON/OFF - cpp
c :-----------------------
k : /o g d
k : cpp
K :
k : /o g e
k : cpp
k : "/do df paf v cp;;okay;canc"
c :------------------------
c : Line Font toggle to dashed
c :-----------------------
k : /o g d
k : cee
K :
k : /o g e
k : cee
k : "/mo ap d ca li dd okay don"
c :------------------------
c : Line Font toggle to solid 
c :-----------------------
k : /o g d
k : css
K :
k : /o g e
k : css
k : "/mo ap d ca li s okay don"
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
C : Defines Global Element Length = 20        -
C :---------------------------------------------
C :
K : /o g d
k : sff
K :
K : /o g e
k : sff
k : "/f pr r fil sff.prg;okay"
C :
c :---------------------------------------------
c : Run transfer Program file - trans.prg      -
C :					       -
C :---------------------------------------------
C :
K : /o g d
k : wrr
K :
K : /o g e
k : wrr
k : "/f pr r fil trans1.prg;okay"
c :-----------------------
c : CONSTRAINT VISIBILITY TOGGLE  - CVV
C :----------------------------------
K : /o g d
K : cvv
K :
K : /O G E
K : cvv
K : "/do df wbf v co;;okay;okay;"
c :-----------------------
c : VIEW CLIPPING  - VCC
C :-----------------------
K : /o g d 
K : vcc
K :
K : /O G E
K : vcc
K : "/op ha"
c :-----------------------
c : LOCAL ORIGINS OFF  - LOO
C :----------------------------------
k : /o g d
k : loo
k :
k : /O G E
k : loo
k : "/do df paf vi lt ;;okay;okay;/"
C :---------------------------------------------
C : Translucency on afterpart preselection- TRR
C :---------------------------------------------
k : /o g d
k : trr
k :
k : /O G E
k : trr
K : "/mo ap v ts on;tr 50;tv1 on;okay;;des"
k :
C :------------------------------------------
C : Set part Opaque after preselection - OPP
C :------------------------------------------
k : /o g d
k : opp
k :
k : /O G E
k : opp
K : "/mo ap v ts on;tr 0;okay;;des"
k :
C : -------------------------
C : Feature reorder  - REE   -
C :---------------------------
k : /o g d
k : ree
k :
k : /O G E
k : ree
K : "/mo spe reo"
k : /
C :---------------------------
C : Toggle Autodraw on - ado
C :---------------------------
k : /o g d
k : ado
k :
k : /O G E
k : ado
K : "/o pr p 5;don;ad on;okay;okay";/
C :---------------------------
C : Set text size - ddd
C :---------------------------
k : /o g d
k : ddd
k :
k : /O G E
k : ddd
K : "/mo ap d an tv dh 15;okay;okay;;/"
C :------------------------------------------
K : /o g d
K : ccc
K : /o g e
K : ccc
K : "/mo ap cs on;co iomega_hp;okay;/des"
C :
C :------------------------------------------
K : /F PR E
K : /
K : /
k : /
E : **** E
