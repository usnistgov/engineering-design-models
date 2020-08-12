!SET_TRAIL_SINGLE_STEP YES 
MAPKEY a1 #view;#cosmetic;#shade;#restore;final_default 
MAPKEY a2 #view;#cosmetic;#shade;#restore;final_front 
MAPKEY a3 #view;#cosmetic;#shade;#restore;final_right 
MAPKEY a4 #view;#cosmetic;#shade;#restore;final_left 
MAPKEY a5 #view;#cosmetic;#shade;#restore;final_skin 
MAPKEY a6 %a1;%a2;%a3;%a4;%a5 
!WING_MASTER_SURF.PRT MAPKEYS 
MAPKEY var %cs;#new;#advanced;#done;#done;#done;#select traj 
MAPKEY sec #sec tools;#place section;?; 
MAPKEY gr %qq;#feature;#create;#datum;#graph 
MAPKEY lc %qq;#layer;#set items;#initial_curves;#done sel;#add items 
MAPKEY lb %qq;#layer;#set display;#initial_curves;#done sel;#done/return;%rr 


!WING_N_RIBS.ASM MAPKEYS 
MAPKEY mm #modify;#mod part;#sel by menu 
MAPKEY sb %cs;#new;#copy;#done 

!EXTRA STUFF 
MAPKEY col #view;#cosmetic;#colors 
MAPKEY te #view;#cosmetic;#colors;#transparent;#enable;#done-return;%sd 
MAPKEY td #view;#cosmetic;#colors;#transparent;#disable;#done-return;%sd 
! 
!========================================================= 
! == 
! Standard Pro/ENGINEER config.pro == 
! == 
! For complete descriptions see == 
! FUNDAMENTALS User Guide. == 
!========================================================= 

! Date: Feb. 17, 1995 
! Modified: Feb. 23, 1995 
! Modified: Jun. 29, 1995 Rev 15 

!========================================================= 
!= Environment Options == 
!========================================================= 
! 
BELL NO 
DISPLAY WIREFRAME 
PROMPT_ON_EXIT NO 
PROVIDE_PICK_MESSAGE_ALWAYS YES 
MAPKEY CURVES 
USE_DIMENSIONED_EDGES NO 
FLIP_ARROW_SCALE 2 
PARENTHESIZE_REF_DIM YES 
Retain_pattern_definition Yes 
Compress_output_files No 
INFO_OUTPUT_MODE Choose 
! 
! Change to UNIT_MM if working in millimeters 
PRO_UNIT_LENGTH UNIT_INCH 
! 
! The following 2 settings are typicall the same 
DEFAULT_DEC_PLACES 3 
SKETCHER_DEC_PLACES 3 
! 
!========================================================== 
!== Window Setup == 
!========================================================== 
! 
THERMO_POSITION_HINT NO_WINDOW_OVERLAP 
MENU_HORIZONTAL_HINT RIGHT 
VISIBLE_MESSAGE_LINES 3 
!MENUITEM_FONT SCREEN-BOLD18 
! 
! Use .90 - .98 depending on hardware. If "ENVIRONMENT" menu does not 
! appear to the right, decrease scale until it does. NOTE: must exit 
! Pro and restart after changing WINDOW_SCALE. 
!WINDOWS_SCALE .95 
! 
FAMILY_TABLE_EDITOR PROTAB 
RELATION_FILE_EDITOR PROTAB 
DRAWING_FILE_EDITOR PROTAB 
SPIN_CONTROL DRAG 
SAVE_TRIANGLES_FLAG YES 
!========================================================= 
!== LAYER DEFAULTS == 
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
! 1_ALL_PLANES 
! 1___DEF_PLANES 
! 1___ANG_PLANE 
! 2_ALL_CSYS 
! 2___DEF_CSYS 
! 3_ALL_AXES 
! 3___HOLE_AXES 
! 
DEF_LAYER LAYER_DATUM 1_ALL_PLANES 
DEF_LAYER LAYER_CSYS 2_ALL_CSYS 
DEF_LAYER LAYER_AXIS 3_ALL_AXES 
DEF_LAYER LAYER_POINT 4_ALL_POINTS 
DEF_LAYER LAYER_CURVE 5_ALL_CURVES 
DEF_LAYER LAYER_SURFACE 6_ALL_SURFS 
DEF_LAYER LAYER_FEATURE 7_ALL_FEATURES 
DEF_LAYER LAYER_DETAIL_ITEM 8_ALL_NOTES_BALLOONS_SYMBOLS_GTOLS(FREE) 
! 
!========================================================= 
!== PDM OPTIONS == 
!========================================================= 

LET_PROE_RENAME_PDM_OBJECTS No 

!========================================================= 
!== MAPKEYS == 
!========================================================= 

! Mapkeys are broken into several MAPKEY TEMPLATES. These can be used 
! with the templates provided in your start-up kit and can also be 
! found in the Pro drawing template.plt. 

!========================================================= 
!== GENERAL MAPKEYS == 
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
!== FUNCTION KEYS == 
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

mapkey ss %sd;%vs 

MAPKEY $F8 %vs 
mapkey vs #view;#orientation;#spin; 

MAPKEY $F9 %pp 
mapkey pp #view;#pan/zoom;#pan; 

MAPKEY $F10 %rg 
MAPKEY rg #done;#done/return;#done/return;#regenerate;#model;#automatic; 

MAPKEY $F11 
MAPKEY $F12 


!========================================================= 
!== VIEWS == 
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
!== DISPLAY == 
!========================================================= 
MAPKEY es #environment;#shading;#done-return; 
MAPKEY eh #environment;#hidden line;#done-return; 
MAPKEY en #environment;#no hidden;#done-return; 
MAPKEY ew #environment;#wireframe;#done-return; 
MAPKEY ef #environment;#disp csys;#disp dtmpln;#disp axes;#disp points; 
MAPKEY ec #environment;#disp csys;#done-return; 
MAPKEY ed #environment;#disp dtmpln;#done-return; 
MAPKEY ea #environment;#disp axes;#done-return; 
MAPKEY et #environment;#disp points;#done-return; 
MAPKEY sfy #environment;#shd srf yes;#done-return; 
MAPKEY sfn #environment;#shd srf no;#done-return; 


!========================================================= 
!== SKETCHER == 
!========================================================= 
!MAPKEY ss #Sketch; 
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
!== FEATURE CREATION == 
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
!== MODIFY/MEASURE == 
!========================================================= 
MAPKEY fr #feature;#redefine; 
MAPKEY fs #feature;#suppress; 
MAPKEY fd #feature;#delete; 
MAPKEY fe #feature;#resume; 
MAPKEY fm #done;#modify; 
MAPKEY fi #done;#info;#feat info; 
MAPKEY md #done;#info;#measure;#distance; 
MAPKEY ml #done;#info;#measure;#curve/edge;#length; 
MAPKEY sa #done;#info;#srf analysis; 
MAPKEY ma #done;#info;#measure;#angle; 
retain_display_memory yes 
store_display yes 
variant_drawing_item_sizes yes 
start_appmgr no
