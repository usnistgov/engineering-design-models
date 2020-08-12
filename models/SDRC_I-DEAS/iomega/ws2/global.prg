C :-----------------------------
c : GLOBAL SYMBOL DEFINITION   -
c :-----------------------------
K : #ON_ERROR PAUSE
C :-----------------------------
c : GLOBAL SYMBOL DEFINITION   -
c :-----------------------------
K : /
K : O
K : S
K : CR
K : T
L :   0      0.180000000    0.150000000
K : Setting Global Symbols
K : 
K : $
C :
C :
C :----------------------
C : OA routine for Jet Unit 
C :----------------------
C : /option gl del
K : /o g d
K : jet
K : 
C : /option gl e
K : /o g e
K : jet
K : "/oaxx run WAVE"
K : 
C : --------------------------
C : OA routine for Spreadsheet
C : -------------------------
C : /option gl del
K : /o g d
K : oa_wave
K : 
C : /option gl e
K : /o g e
K : oa_wave
K : "/oaxx run WAVE"
K :
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
c :------------------------
c : MIDSURFACE DISPLAY - MII
c :-----------------------
k : /o g d
k : mii
K :
k : /o g e
k : mii
k : "/f pr r fil mii.prg okay"
c :-----------------------
c : MIDSURFACE ATTRIBUTES - MID
c :-----------------------
k : /o g d
k : mid
K :
k : /o g e
k : mid
k : "/ta ms;/co sa ma"
c :----------------------------------
c : OPTIMIZATION SETUP - OPT 
c :---------------------------------
k :/o g d
k : opt
K : 
k :/o g e
k : opt
k : "/f pr r fil opt.prg okay"
c :----------------------------------
c : Volume Program FIle for Fuel tank 
c :---------------------------------
k :/o g d
k : vvv
K : 
k :/o g e
k : vvv
k : "/f pr r fil volume.prg okay"
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
k : "/f pr r fil trans.prg;okay"
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
C :
C :---------------------------
C : Bracket Composite Image
C :---------------------------
k : /o g d
k : bracket
k :
k : /O G E
k : bracket
K : "cg;er of;/f pi op f b;okay;pi d fil picture_files/hp/bracket.pfb;okay;er on"
k : /
C :---------------------------
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
C : Post process results 1
C :---------------------------
k : /o g d
k : pp1
k :
k : /O G E
k : pp1
K : "/f pi op f b;okay;pi d fil picture_files/hp/pp1.pfb;okay"
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
C :------------------------------------------
k : /o s cle
K :  /do df
K :  PA on
K :  AS on
K : OKAY
K : au;mg 1.5
C : ---------------------
C : Cleanup
C : ---------------------
K : #delete pname
K : #delete pathname
K : /f pr r fil start_images.prg;okay
K : /F PR E
K : /
K : /
k : /
E : **** E
