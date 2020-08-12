!========================================================= 
!       == 
! Standard Pro/ENGINEER config.pro  == 
!       == 
! For complete descriptions see    == 
! FUNDAMENTALS User Guide.   == 
!========================================================= 

! Date:  Feb. 17, 1995 
! Modified: Feb. 23, 1995 
! Modified: Jun. 29, 1995 Rev 15 
!========================================================= 
!=   Demo Specific Options    == 
!========================================================= 


!!! DISPLAY SETTINGS !!! 

DISPLAY WIREFRAME 
DATUM_DISPLAY NO 
AXIS_DISPLAY NO 
DISPLAY_COORDINATE_SYS no 
DATUM_POINT_DISPLAY no 
DATUM_POINT_TAG_DISPLAY no 
DISPLAY_COORDINATE_SYS NO 
!BOM_FORMAT ./cust_bom.fmt 
NUMBER_USER_COLORS 32 
!TRAIL_DIR ./trails 
HLR_FOR_QUILTS yes 
!MENUITEM_FONT HELVB14 
!SHOW_SHADED_EDGES yes 
VISIBLE_MESSAGE_LINES 1 
SHADE_SURFACE FEAT yes 
TREE_PLACEMENT right 
INDEPENDENT_MENUS yes 
DEF_LAYER LAYER_CURVE curves 

WWW_EXPORT_GEOMETRY_AS JPG_VRML 
WWW_MULTIPLE_VIEWS TOP 
AUTO_REGEN_VIEWS YES 


!!! GENERAL MAPKEYS !!! 

MAPKEY ss #view;#cosmetic;#shade;#display;%vs 

!!! DEMO MAPKEYS !!! 

MAPKEY bs #VIEW;#LAYER DISP;#SURF;#DONE SEL;#DONE-RETURN; 
mapkey sp ~ FocusOut `newtree` `AssyTree`;~ FocusOut `newtree` `AssyTree`;\ 
mapkey(continued) #SET UP;#PARAMETERS;#PARAM TBL;#APPLY SET;#3PIN_TAPE;#DONE/RETURN;\ 
mapkey(continued) #REGENERATE;~ FocusOut `newtree` `AssyTree`;~ FocusOut `newtree` `AssyTree`; 
mapkey fd ~ FocusOut `newtree` `AssyTree`;~ FocusOut `newtree` `AssyTree`;~ \ 
mapkey(continued) FocusOut `newtree` `AssyTree`;#FEATURE;#DELETE;#CLIP;~ FocusOut `newtree` \ 
mapkey(continued) `AssyTree`;~ FocusOut `newtree` `AssyTree`;#SEL BY MENU;#NUMBER;7;#DONE SEL;\ 
mapkey(continued) ~ FocusOut `newtree` `AssyTree`;#DONE;~ FocusOut `newtree` `AssyTree`;~ \ 
mapkey(continued) FocusOut `newtree` `AssyTree`;#DELETE RELS;~ FocusOut `newtree` `AssyTree`;~ \ 
mapkey(continued) FocusOut `newtree` `AssyTree`;~ FocusOut `newtree` `AssyTree`; 
mapkey fp ~ FocusOut `newtree` `AssyTree`;#FEATURE;#CREATE;#PROTRUSION;~ \ 
mapkey(continued) FocusOut `newtree` `AssyTree`;#DONE;~ FocusOut `newtree` `AssyTree`;~ \ 
mapkey(continued) FocusOut `newtree` `AssyTree`;#DONE;~ FocusOut `newtree` `AssyTree`;~ \ 
mapkey(continued) Activate `rmb_popup` `Query Sel`;~ FocusOut `newtree` `AssyTree`; 
mapkey sc ~ FocusOut `newtree` `AssyTree`;#SEC TOOLS;#COPY DRAW;?;~ FocusOut \ 
mapkey(continued) `newtree` `AssyTree`;#final_dwg.drw;~ FocusOut `newtree` `AssyTree`;~ \ 
mapkey(continued) FocusOut `newtree` `AssyTree`; 
mapkey sw #RELATIONS;#SWITCH DIM;#DONE; 
mapkey td #FEATURE;#CREATE;#TWEAK;#DRAFT;#NEUTRAL CRV;#DONE;#DONE;#LOOP \ 
mapkey(continued) SURFS;~ Activate `rmb_popup` `Query Sel`; 
mapkey cr #FEATURE;#CREATE;#ROUND;#DONE;#DONE;~ Activate `rmb_popup` `Query \ 
mapkey(continued) Sel`; 
mapkey sh #FEATURE;#CREATE;#SHELL;~ Activate `rmb_popup` `Query Sel`; 
mapkey udf #FEATURE;#GROUP;#SEARCH/RETR;#rib;#DONE;#DONE; 
mapkey tr #FEATURE;#CREATE;#SURFACE;#TRANSFORM;#MOVE;#NO COPY;#DONE; 
mapkey cq #FEATURE;#CREATE;#CUT;#USE QUILT;#DONE;~ Activate `rmb_popup` \ 
mapkey(continued) `Query Sel`; 
mapkey mp #INFO;#MASS PROPS;#PART MP;#DEFAULT;3e-6; 
mapkey xs #X-SECTION;#CREATE;#DONE; 
mapkey sv #VIEWS;#MODIFY VIEW;#VIEW TYPE; 
mapkey dv #VIEWS;#DETAILED;#DONE; 
mapkey dm #VIEWS;#DISP MODE;#VIEW DISP; 
mapkey sl #DETAIL;#CREATE;#SNAP LINE;#ATT GEOM/SNAP; 
mapkey ml #MODIFY;#MOD PART; 
mapkey ex #VIEW;#COSMETIC;#EXPLODE; 
mapkey sc #SHRINKAGE;#BY SCALING;#DONE;#SEL BY MENU;#STOCK_MOLD.PRT;~ Select \ 
mapkey(continued) `sellist0` `Namelist`1 `CSYS_PART_DEF`; 
mapkey mh #FEATURE;#CONFIRM;#MOLD ASSEM;#SOLID;#HOLE;#DONE;#COAXIAL;#DONE; 
mapkey ps #PARTING SURF;#CREATE;p;#ADD;#SHADOW;#DONE;#DONE/RETURN; 
mapkey dc #INFO;#DRAFT CHECK;#THREE COLOR;#DONE; 
mapkey sm #MOLD COMP;#SPLIT;#DONE;#SEL BY MENU;#PICK; 
mapkey sm #MOLD COMP;#SPLIT;#DONE; 
mapkey bp #PARTING SURF;#BLANK;~ Activate `sellistmul0` `SelAll`;~ Activate \ 
mapkey(continued) `sellistmul0` `Ok`;#DONE SEL;#DONE/RETURN; 
mapkey cm #MOLDING;#CREATE;m;#MOLD OPENING;#DEFINE STEP;#DEFINE MOVE; 
mapkey et #EXTRACT;~ Activate `sellistmul0` `SelAll`;~ Activate \ 
mapkey(continued) `sellistmul0` `Ok`;#DONE SEL; 
mapkey mc #MACHINING;#DONE OPER;#MILL;#DONE;#DONE;#SEL BY MENU;#SEL BY MENU;\ 
mapkey(continued) #STOCK_MFG.PRT;~ Select `sellist0` `Namelist`1 `MACHINE`;#DONE OPER; 
mapkey ux #VIEW;#COSMETIC;#UN-EXPLODE; 
mapkey bb #TABLE;#BOM BALLOON;#SHOW; 
mapkey wi ~ FocusOut `newtree` `AssyTree`;#FEATURE;#CREATE;#USER DEFINED;\ 
mapkey(continued) #window;#DONE;#DONE;#DONE;~ FocusOut `newtree` `AssyTree`; 
mapkey fs #MODE;#PART;#RETRIEVE;final_surf;~ FocusOut `newtree` `AssyTree`; 
mapkey ss #FILE;?;#final_surf.neu;#CSYS_PART_DEF;#DONE/RETURN;#DONE SEL;\ 
mapkey(continued) #DONE;#DONE@IMPORT PAIRS;~ FocusOut `newtree` `AssyTree`; 
mapkey so #ENVIRONMENT;#DISPSNAPLINE;#DONE-RETURN; 
mapkey rv #MODE;#DRAWING;#RETRIEVE;start_lid;#VIEW;#REGEN VIEW;#CUR SHEET;\ 
mapkey(continued) #DONE-RETURN; 

!========================================================= 
!=   Environment Options    == 
!========================================================= 
! 
BELL NO 
!DISPLAY    HIDDENVIS 
!PROMPT_ON_EXIT   YES 
PROVIDE_PICK_MESSAGE_ALWAYS YES 
SHADE_WITH CURVES 
USE_DIMENSIONED_EDGES NO 
FLIP_ARROW_SCALE 2 
PARENTHESIZE_REF_DIM YES 
Retain_pattern_definition Yes 
Compress_output_files no 
INFO_OUTPUT_MODE Choose 
! 
! Change to UNIT_MM if working in millimeters 
PRO_UNIT_LENGTH UNIT_MM 
! 
! The following 2 settings are typicall the same 
DEFAULT_DEC_PLACES 2 
SKETCHER_DEC_PLACES 2 
SPIN_CENTER_DISPLAY no 
! 
! 

!========================================================== 
!==   Window Setup    == 
!========================================================== 
! 
THERMO_POSITION_HINT NO_WINDOW_OVERLAP 
MENU_HORIZONTAL_HINT RIGHT 
!VISIBLE_MESSAGE_LINES   3 
!MENUITEM_FONT   SCREEN-BOLD18 
! 
! Use .90 - .98 depending on hardware. If "ENVIRONMENT" menu does not 
! appear to the right, decrease scale until it does. NOTE: must exit 
! Pro and restart after changing WINDOW_SCALE. 
WINDOWS_SCALE .91 
! 

!========================================================== 
!==   DRAWING STANDARDS   == 
!========================================================== 
! 
! Select either english or metric drawing setup files as your 
! common default. You should refer to the "Drawing User's Guide" 
! for a complete list of drawing setup file options. 
! 
!DRAWING_SETUP_FILE   pro_stds/configs/english.dtl 
!DRAWING_SETUP_FILE   pro_stds/configs/metric.dtl 
DRAWING_SETUP_FILE demo.dtl 
DEFAULT_DRAW_SCALE 1.0 

CREATE_DRAWING_DIMS_ONLY YES 
HIGHLIGHT_NEW_DIMS YES 
ALLOW_MOVE_ATTACH_IN_DTL_MOVE YES 
RENAME_DRAWINGS_WITH_ASSEM YES 
gtol_dim_placement under_value 
mark_approximate_dims yes 
! 
!========================================================= 
!==   PLOTTING    == 
!========================================================= 
DELETE_AFTER_PLOTTING YES 

! Change the following to 'YES' if postscript plots are rotated 90 deg. 
LANDSCAPE_POSTSCRIPT_PRINT NO 

!PLOTTER   SET: To your defaut plotter 
!PLOTTER_COMMAND  SET: To UNIX plot command (ex. lpr) 

!========================================================= 
!==  Tolerance Setup    == 
!========================================================= 

TOL_MODE plusminussym 

! Set linear and angular tolerances based on your company standard. 
! Example: LINEAR_TOL 2 0.016 => 3.01 +- .016 
! LINEAR_TOL 3 0.001 => 3.013 +- .001 

!LINEAR_TOL 0    0.5 
!LINEAR_TOL 1    0.1 
!LINEAR_TOL 2    0.016 
!LINEAR_TOL 3    0.001 
!LINEAR_TOL 4    0.0001 

!ANGULAR_TOL 0    1 
!ANGULAR_TOL 1    .5 

! 
!========================================================= 
!==   Editor Options     == 
!========================================================= 
! 
! The following editors can be used instead of the default "vi" editor. 
! Remove "!" from desired hardware editor. Test by typing the command in a 
! unix window. If the command does not work, verify the command to access 
! the editor with your hardware support. 
! (ex. On SGI type: /usr/sbin/jot -f ) 
! 
!SGI 
!PRO_EDITOR_COMMAND /usr/sbin/jot -f 
! 
!Hewlett Packard 
!PRO_EDITOR_COMMAND /usr/vue/bin/vuepad 
! 
!Sun 
!PRO_EDITOR_COMMAND /usr/openwin/bin/textedit 
! 
!DEC Alpha 3000 Unix 
!PRO_EDITOR_COMMAND /usr/bin/X11/dxnotepad 
! 
! 
!If the system editor or "vi" is preferred, change PROTAB to EDITOR 
FAMILY_TABLE_EDITOR PROTAB 
RELATION_FILE_EDITOR PROTAB 
DRAWING_FILE_EDITOR PROTAB 


!========================================================= 
!==   Graphics Options    == 
!========================================================= 
! 
! If you have a hardware graphics board, remove the "!" next to GRAPHICS 
! for your hardware model. 
! 
! Hewlett Packard 
!GRAPHICS    STARBASE 
! 
! Digital Equipment Corp 
!GRAPHICS   PEX 
! 
! IBM or SGI 
!GRAPHICS   GL 
! 
! SUN 
!GRAPHICS   XGL 
! 

!SPIN_CONTROL    DRAG 
!SAVE_TRIANGLES_FLAG   YES 


!========================================================= 
!==   SEARCH PATHS     == 
!========================================================= 

!SEARCH_PATH $home 
!SEARCH_PATH pro_stds/library_dir 
!SEARCH_PATH pro_stds/material_dir 
!SEARCH_PATH pro_stds/group_dir 
!SEARCH_PATH pro_stds/symbol_dir 
!SEARCH_PATH pro_stds/format_dir 
!SEARCH_PATH pro_stds/start_files 

!========================================================= 
!==   PRO SEARCH DIRECTORIES    == 
!========================================================= 

!TRAIL_DIR  SET (OPTIONAL): DO NOT use a dir across network 
!PRO_GROUP_DIR    pro_stds/group_dir 
!PRO_SYMBOL_DIR   pro_stds/symbol_dir 
!PRO_FORMAT_DIR    pro_stds/format_dir 
!PRO_MATERIAL_DIR   pro_stds/material_dir 

!========================================================= 
!==   LAYER DEFAULTS     == 
!========================================================= 
! 
! The naming convenvention shown here for layers provides 
! a way to organize your layers in a specific order. Pro 
! sorts layers in alphanumeric order. As new layers are 
! created, they will be added to the bottom of the list if 
! they begin with an "alpha" character. They will be added 
! to the top of the list if they begin with "0_". In addition, 
! if you want to add new layers for a group of items, you can 
! make them appear as indented layers. For example: 
! 
!   1_ALL_PLANES 
!   1___DEF_PLANES 
!   1___ANG_PLANE 
!   2_ALL_CSYS 
!   2___DEF_CSYS 
!   3_ALL_AXES 
!   3___HOLE_AXES 
! 
!DEF_LAYER LAYER_DATUM   1_ALL_PLANES 
!DEF_LAYER LAYER_CSYS   2_ALL_CSYS 
!DEF_LAYER LAYER_AXIS   3_ALL_AXES 
!DEF_LAYER LAYER_POINT   4_ALL_POINTS 
!DEF_LAYER LAYER_CURVE   5_ALL_CURVES 
!DEF_LAYER LAYER_SURFACE  6_ALL_SURFS 
!DEF_LAYER LAYER_FEATURE  7_ALL_FEATURES 
!DEF_LAYER LAYER_DETAIL_ITEM  8_ALL_NOTES_BALLOONS_SYMBOLS_GTOLS(FREE) 
! 



!========================================================= 
!== PDM OPTIONS == 
!========================================================= 

LET_PROE_RENAME_PDM_OBJECTS No 

!========================================================= 
!==   MAPKEYS     == 
!========================================================= 

! Mapkeys are broken into several MAPKEY TEMPLATES. These can be used 
! with the templates provided in your start-up kit and can also be 
! found in the Pro drawing template.plt. 

!========================================================= 
!==   GENERAL MAPKEYS    == 
!========================================================= 

MAPKEY dd #done; 
MAPKEY dr #done-return;#done/return; 
MAPKEY ff #flip; 
MAPKEY aa #okay;#accept; 
MAPKEY yy #yellow; 
MAPKEY rd #red; 
MAPKEY ee #enter; 
MAPKEY xx #next; 
MAPKEY ns #view;#names;#save; 
MAPKEY nr #view;#names;#retrieve; 
MAPKEY fc #Feature;#create; 

! The following mapkeys will enable "qq" to quit any command 
! and bring you to the first menu. 
! 
MAPKEY q1 #done/return;#done/return;#done/return;#done/return; 
MAPKEY q2 #return;#return;#return;#return; 
MAPKEY q3 #Done-return;#Done-return;#Done-return;#Done-return; 
MAPKEY q4 #Done sel;#Done sel;#Done sel;#done;#done;#done;#done; 
MAPKEY q5 #quit refs;#quit del/sup; 
MAPKEY q6 #done;#quit;#done;#quit;#confirm;#done/return;#done;#done; 
MAPKEY q7 #done;#quit;#confirm;#done/return;#done;#done; 

MAPKEY qq %q1;%q2;%q3;%q4;%q5;%q6;%q7; 
! 
! The following mapkeys are for the munudef.pro setbutton "DEFINE VIEWS". 
! 
MAPKEY RIGHT #orientation;#angles;#vert;-90;#done/accept;#names; 
MAPKEY TOP #orientation;#angles;#vert;90;#horiz;90;#done/accept;#names; 
MAPKEY LEFT #orientation;#angles;#vert;90;#norm;90;#done/accept;#names; 
MAPKEY BOTTOM #orientation;#angles;#horiz;-90;#norm;90;#done/accept;#names; 
MAPKEY BACK #orientation;#angles;#norm;180;#horiz;90;#done/accept;#names; 

!========================================================= 
!==   FUNCTION KEYS    == 
!========================================================= 

MAPKEY $F1 %vd 
mapkey vd #view;#orientation;#default;#done-return; 

MAPKEY $F2 %zr 
mapkey zr #view;#pan/zoom;#reset; 

MAPKEY $F3 %zx 
MAPKEY zx #view;#pan/zoom;#zoom out;#done-return; 

MAPKEY $F4 %zz 
mapkey zz #view;#pan/zoom; 

MAPKEY $F5 %vn 
mapkey vn #view;#names; 

MAPKEY $F6 %rr 
mapkey rr #view;#repaint;#done-return; 

MAPKEY $F7 %sd 
mapkey sd #view;#cosmetic;#shade;#display;#done-return; 

MAPKEY $F8 %vs 
mapkey vs #view;#orientation;#spin; 

MAPKEY $F9 %pp 
mapkey pp #view;#pan/zoom;#pan; 

MAPKEY $F10 %rg 
MAPKEY rg #regenerate;#automatic; 

MAPKEY $F11 
MAPKEY $F12 


!========================================================= 
!==   VIEWS     == 
!========================================================= 
MAPKEY vf #view;#Names;#front;#done-return; 
MAPKEY vt #view;#Names;#top;#done-return; 
MAPKEY vb #view;#Names;#back;#done-return; 
MAPKEY vl #view;#Names;#left;#done-return; 
MAPKEY vg #view;#Names;#right;#done-return; 
MAPKEY vm #view;#Names;#bottom;#done-return; 
MAPKEY ns #view;#names;#save; 
MAPKEY nr #view;#names;#retrieve; 
MAPKEY st #view;#names;#save;tmp_view;y;#done-return; 
MAPKEY rt #view;#names;#retrieve;#tmp_view;#done-return; 

!========================================================= 
!==   DISPLAY     == 
!========================================================= 
MAPKEY eh #environment;#hidden line;#done-return; 
MAPKEY en #environment;#no hidden;#done-return; 
MAPKEY ew #environment;#wireframe;#done-return; 
MAPKEY es #environment;#shading;#done-return; 
MAPKEY ef #environment;#disp csys;#disp dtmpln;#disp axes;#disp points; 
MAPKEY ec #environment;#disp csys;#done-return; 
MAPKEY ed #environment;#disp dtmpln;#done-return; 
MAPKEY ea #environment;#disp axes;#done-return; 
MAPKEY ep #environment;#disp points;#done-return; 
MAPKEY sfy #environment;#shd srf yes;#done-return; 
MAPKEY sfn #environment;#shd srf no;#done-return; 


!========================================================= 
!==   SKETCHER    == 
!========================================================= 
MAPKEY ss #Sketch; 
MAPKEY sch #Sketch;#line;#centerline;#horizontal; 
MAPKEY scv #Sketch;#line;#centerline;#vertical; 
MAPKEY sg #Sketch;#adv geometry; 
MAPKEY nn #dimension; 
MAPKEY as #alignment; 
MAPKEY tc #geom tools;#trim;#corner; 
MAPKEY nt #geom tools;#intersect; 
MAPKEY af #sketch;#arc;#fillet; 
MAPKEY ul #delete;#undelete last; 


!========================================================= 
!==   FEATURE CREATION    == 
!========================================================= 
MAPKEY ct #feature;#create;#cut; 
MAPKEY cp #feature;#create;#protrusion; 
MAPKEY ch #feature;#create;#hole; 
MAPKEY cr #feature;#create;#round; 
MAPKEY cc #feature;#create;#datum;#curve; 
MAPKEY cs #feature;#create;#surface; 
MAPKEY cd #feature;#create;#datum;#plane; 
MAPKEY cv #feature;#create;#datum;#curve;#done;#use prev; 
MAPKEY cf #feature;#create;#tweak;#draft; 
MAPKEY cn #feature;#create;#datum;#point; 


!========================================================= 
!==   MODIFY/MEASURE    == 
!========================================================= 
MAPKEY fr #feature;#redefine; 
MAPKEY fs #feature;#suppress; 
!MAPKEY fd #feature;#delete; 
MAPKEY fe #feature;#resume; 
MAPKEY fm #done;#modify; 
MAPKEY fi #done;#info;#feat info; 
MAPKEY md #done;#info;#measure;#distance; 
MAPKEY ml #done;#info;#measure;#curve/edge;#length; 
MAPKEY sa #done;#info;#srf analysis; 
MAPKEY ma #done;#info;#measure;#angle; 


!========================================================= 
!==   DRAWINGS     == 
!========================================================= 

MAPKEY tl #modify;#text;#text line; 
MAPKEY tf #modify;#text;#full note; 
MAPKEY th #modify;#text;#text height; 
MAPKEY sn #sheets;#next; 
!MAPKEY sr #sheets;#previous; 
MAPKEY mv #detail;#move; 
MAPKEY ft #done/return;#sheets;#format; 
MAPKEY sw #detail;#show;#dimension; 
MAPKEY mt #modify;#dim params;#decimal; 
MAPKEY fa #detail;#flip arrows; 

!==================================================== 
! The following mapkeys for START FILES are used == 
! in menu_def.pro.    == 
!==================================================== 
!==================================================== 
!== START PARTS    == 
!==================================================== 
! 
MAPKEY part1 #mode;#mode;#part; 
MAPKEY part2 #retrieve;pro_stds/start_files/startpart; 
MAPKEY part3 #DBMS;#save as;;rename_this_part;#erase;#confirm; 
MAPKEY part4 #part;#retrieve;rename_this_part; 
MAPKEY part5 #DBMS;#rename;;#done-return;#set up;#mod params; 
! 
!==================================================== 
!== START ASSEMBLY == 
!===================================================== 
! 
MAPKEY assy1 #mode;#mode;#assembly; 
MAPKEY assy2 #retrieve;pro_stds/start_files/startassy; 
MAPKEY assy3 #dbms;#save as;;rename_this_assembly;#erase;#all;#confirm; 
MAPKEY assy4 #assembly;#retrieve;rename_this_assembly; 
MAPKEY assy5 #DBMS;#rename;;#done-return;#set up;#mod params; 
! 
!==================================================== 
!== START SHEETMETAL == 
!==================================================== 
! 
MAPKEY sheet2 #retrieve;pro_stds/start_files/startshmtl; 
! 

!==================================================== 
!== START DRAWING == 
!==================================================== 
! 
