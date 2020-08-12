BELL NO 
DATUM_POINT_DISPLAY NO 
DATUM_POINT_TAG_DISPLAY NO 
AXIS_DISPLAY NO 
DISPLAY_COORDINATE_SYS NO 
DISPLAY HIDDENVIS 
SHADE_SURFACE_FEAT NO 
!SET_TRAIL_SINGLE_STEP YES 
allow_old_style_round	yes
SPIN_CONTROL DRAG 
DEPTHCUE_OPTIONS DEPTHCUE_ON 


PRO_LIBRARY_DIR /prolibs 

SHADE_MFG_REF_MODELS YES 

DRAWING_SETUP_FILE drawing.dtl 


!********** DEFAULT LAYER ASIGNMENTS ********** 

DEF_LAYER LAYER_AXIS _AXES 
DEF_LAYER LAYER_CSYS _CSYS 
DEF_LAYER LAYER_CURVE _CURVES 
DEF_LAYER LAYER_DATUM _PLANES 
DEF_LAYER LAYER_DATUM_POINT _POINTS 
DEF_LAYER LAYER_QUILT _SURFS 
DEF_LAYER LAYER_SURFACE _SURFS 


FIT_OBJECT_IN_WINDOW YES 

PRO_UNIT_LENGTH unit_mm 
PRO_UNIT_MASS unit_kilogram 


!********** WORKING MAPKEYS ********** 

mapkey zz #view; #pan/zoom; #zoom in; 
mapkey zr #view; #pan/zoom; #reset; #done-return; 
mapkey xx #view; #pan/zoom; #zoom out; 

mapkey vd #view; #orientation; #default; #done-return; 
mapkey vr #view; #repaint; #done-return; 
mapkey vs #view; #orientation; #spin; 

mapkey sd #view; #cosmetic; #shade; #display; #done-return; 

mapkey ss %sd; %vs; 

mapkey dd #environment; #disp dtmpln; #done-return; 
mapkey dc #environment; #colors; #done-return; 
mapkey da #environment; #disp axes; #done-return; 
mapkey ds #environment; #disp csys; #done-return; 
mapkey dp #environment; #disp points; #done-return; 

mapkey rg #regenerate; 


!********* VIEW MAPKEYS ************ 

mapkey tv #view; #names; #retrieve; #top; #done-return; 
mapkey sv #view; #names; #retrieve; #side; #done-return; 
mapkey fv #view; #names; #retrieve; #front; #done-return; 
mapkey lsv #view; #names; #retrieve; #l_side; #done-return; 
mapkey bv #view; #names; #retrieve; #back; #done-return; 


!********** SYSTEM OPTIONS ********** 

MENU_HORIZONTAL_HINT RIGHT 
THERMO_POSITION_HINT NO_WINDOW_OVERLAP 
AUTO_REGEN_VIEWS YES 
RETAIN_DISPLAY_MEMORY YES 


!********** WORKING OPTIONS ********** 

accuracy_lower_bound 1.0e-6 


!********** DEMO MAP KEYS ************ 

mapkey scr #mode; #part; #retrieve; core_rear.prt; %ss; 
mapkey scf #mode; #part; #retrieve; core_front; %ss; 

mapkey spc #mode; #part; #retrieve; cope; %ss; 
mapkey spd #mode; #part; #retrieve; drag; %ss; 
mapkey spr #mode; #part; #retrieve; result; %ss; 

mapkey spu #mode; #part; #retrieve; source_of_udf; %sd; #x-section; #section 

mapkey xs %sd; #set up; #x-section; #retrieve; #section; 

mapkey ds #environment; #shading; #done-return; 
mapkey dh #environment; #hidden line; #done-return; 
mapkey dn #environment; #no hidden; #done-return; 

mapkey one %spc; #done-return; 
mapkey two %spd; #done-return; 
mapkey three %scr; #done-return; 
mapkey four %scf; #done-return; 
mapkey five %spr; #done-return; 
mapkey final %one; %two; %three; %four; %five; 
retain_display_memory yes
store_display yes
variant_drawing_item_sizes yes
retain_display_memory yes
store_display yes
variant_drawing_item_sizes yes
