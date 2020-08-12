
!!!! Startup Environment !!!! 
bell no 
MAX_ANIMATION_TIME 2 
MIN_ANIMATION_STEPS 6 
DATUM_DISPLAY NO 
WINDOWS_SCALE .85 
AXIS_DISPLAY NO 
DISPLAY HIDDENINVIS 
SPIN_CENTER_DISPLAY NO 
DISPLAY_COORDINATE_SYS NO 


!!!! Search Paths !!!! 
search_path c:\shannon\assoc_demo\nc\ 
search_path ./electrode 
search_path /mold 
search_path drawings\ 
search_path iges\ 
search_path verify\ 
search_path cmm\ 
search_path mfg_process\ 
search_path asm_process\ 



!!!! MFG Configs !!!! 
SHADE_MFG_REF_MODELS yes 
MFG_XYZ_NUM_DIGITS 8 
MFG_IJK_NUM_DIGITS 8 
PRONCPOST_DBF 
PRO_MDB_DIR 
PRO_MF_CL_DIR 
PRO_MF_PARAM_DIR nc\parameters\ 
PRO_MF_TPRM_DIR nc\tools\ 
PRO_MF_WORKCELL_DIR 
CL_ARROW_SCALE 




!!!! New Functionality Configs !!!! 
sketcher_dynamic_dimensioning yes 


!!!! Mapkeys !!!! 

mapkey vd #VIEW;#DEFAULT;#DONE-RETURN; 
mapkey rr #VIEW;#REPAINT;#DONE-RETURN; 
mapkey dd #ENVIRONMENT;#DISP DTMPLN;#DONE-RETURN; 
mapkey sd #VIEW;#COSMETIC;#SHADE;#DISPLAY;#DONE-RETURN; 
mapkey ww #VIEW;#LAYER DISP;#WP;#DONE SEL;#REPAINT;#DONE-RETURN; 
mapkey ee #VIEW;#COSMETIC;#EXPLODE;#DONE-RETURN; 
mapkey ff #VIEW;#LAYER DISP;#FIXTURE;#DONE SEL;#DONE-RETURN; 
mapkey ff #VIEW;#LAYER DISP;#FIXTURE;#DONE SEL;#REPAINT;#DONE-RETURN; 
mapkey re #VIEW;#LAYER DISP;#REF;#DONE SEL;#REPAINT;#DONE-RETURN; 
mapkey aa #ENVIRONMENT;#DISP AXES;#DONE-RETURN; 
