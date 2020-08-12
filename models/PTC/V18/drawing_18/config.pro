
SET_TRAIL_SINGLE_STEP YES 

!================ 
!*****GLOBAL***** 
!================ 
bell NO 
system_background_color 0 0 49 
visible_message_lines 2 
menu_horizontal_hint right 
thermo_position_hint no_window_overlap 
fit_object_in_window Yes 
pro_library_dir /ptcmisc/prolibs 
spin_center_display no 

AXIS_DISPLAY NO 
DATUM_DISPLAY NO 
DATUM_POINT_DISPLAY NO 
DATUM_POINT_TAG_DISPLAY NO 
DISPLAY WIREFRAME 
DISPLAY_COORDINATE_SYS NO 
TANGENT_EDGE_DISPLAY SOLID 
DISPLAY_SILHOUETTE_EDGES Yes 

shade_surface_feat no 
shade_with curves 
spin_control drag 
COMPRESS_OUTPUT_FILES NO 

PRO_UNIT_LENGTH UNIT_MM 
sketcher_dec_places 3 
default_dec_places 3 

!======================== 
!*****DRAWING/DETAIL***** 
!======================== 
allow_move_attach_in_dtl_move yes 
drawing_file_editor protab 
CREATE_DRAWING_DIMS_ONLY no 
ALLOW_MOVE_ATTACH_IN_DTL_MOVE YES 
DEFAULT_DEC_PLACES 2 
HIGHLIGHT_NEW_DIMS YES 
INTERFACE_QUALITY 1 
AUTO_REGEN_VIEWS NO 
DISPLAY_IN_ADDING_VIEW DEFAULT 
FORCE_WIREFRAME_IN_DRAWINGS NO 
RETAIN_DISPLAY_MEMORY YES 
SAVE_DISPLAY YES 
LANDSCAPE_POSTSCRIPT_PRINT NO 
TOL_MODE NOMINAL 
RENAME_DRAWINGS_WITH_OBJECT PART 
!DRAWING_SETUP_FILE 
PRO_DTL_SETUP_DIR /setups 

PEN1_LINE_WEIGHT 1 
PEN2_LINE_WEIGHT 1 
PEN3_LINE_WEIGHT 1 
PEN4_LINE_WEIGHT 1 
PEN5_LINE_WEIGHT 1 
PEN6_LINE_WEIGHT 1 
PEN7_LINE_WEIGHT 1 
PEN8_LINE_WEIGHT 1 

!======================= 
!*****MANUFACTURING***** 
!======================= 
MFG_IJK_NUM_DIGITS 8 
MFG_XYZ_NUM_DIGITS 8 
SHADE_MFG_REF_MODELS YES 

!============================ 
!*****INTERFACE OPTIONS ***** 
!============================ 
!INTF_IN_BLANKED_ENTITIES NO 
!INTF3D_IN_INCLUDE_ITEMS SRFS 

!====================================================================== 
! MAPKEYS : 
!====================================================================== 
MAPKEY hl #environment;#Hidden Line;#Done-Return 
MAPKEY wf #environment;#Wireframe;#Done-Return 
MAPKEY df #environment;#disp dtmpln;%dr 
MAPKEY do #environment;#dtm plns on;%dr 
mapkey cv #sketch;#line;#centerline;#vertical 
mapkey ch #sketch;#line;#centerline;#horizontal 
mapkey dr #done-return 
mapkey pp #play path;#status box;#done cl 
MAPKEY zz #view;#Pan/Zoom 
MAPKEY zo #view;#Pan/Zoom;#Zoom Out;#done-return 
MAPKEY zr #view;#Pan/Zoom;#Reset;#done-return 
MAPKEY zp #view;#Pan/Zoom;#Pan 
! 
MAPKEY rr #view;#repaint;#done-return 
MAPKEY vr %rr 
MAPKEY vs #view;#orientation;#spin 
mapkey sd #view;#cosmetic;#shade;#display;#done-return 
MAPKEY vd #view;#orientation;#default;#done-return 
mapkey ld #view;#layer disp;#blank; 
mapkey dc #feature;#create;#datum;#curve; 
mapkey dt #feature;#create;#datum;#point; 
mapkey si #done;#done/return;#layer;#set items; 
! 
!====================================================================== 
! DEFAULT LAYER ASSIGNMENTS 
!====================================================================== 
!DEF_LAYER LAYER_AXIS _AXES 
!DEF_LAYER LAYER_CSYS _CSYS 
!DEF_LAYER LAYER_CURVE _CURVES 
!DEF_LAYER LAYER_DATUM _PLANES 
!DEF_LAYER LAYER_DATUM_POINT _POINTS 
!DEF_LAYER LAYER_QUILT _SURFS 
!DEF_LAYER LAYER_SURFACE _SURFS 
! 
! 
!====================================================================== 
! OTHER MAPKEYS: 
!====================================================================== 
mapkey bv #view;#names;#retrieve;#bottom 
! 
mapkey cd #misc;#change dir; 
mapkey cx #view;#cosmetic;#explode; 
mapkey cux #view;#cosmetic;#un-explode; 
! 
mapkey da #ENVIRONMENT;#DISP DTMPLN;#DISP POINTS;#DISPPNTTAGS;#DISP AXES;\ 
mapkey(continued) #DISP CSYS;#DONE-RETURN; 
mapkey dd #return;#detail;#delete; 
mapkey dp #feature;#create;#datum;#plane;#default 
mapkey ds #feature;#create;#datum;#coord sys;#default;#done 
! 
mapkey fv #view;#names;#retrieve;#front 
! 
mapkey gv #view;#names;#retrieve;#goodview;#done-return; 
mapkey gvn #view;#names;#retrieve;#gvn;#done-return; 
! 
mapkey hl #environment;#hidden line;#done-return; 
! 
mapkey q #query sel 
! 
mapkey mv #done/return;#set up;#modify val 
! 
mapkey sbv #view;#names;#save;bottom;y; 
mapkey sgv #view;#names;#save;goodview;y; 
mapkey sfv #view;#names;#save;front;y; 
!mapkey ssv #view;#names;#save;side;y; 
mapkey stv #view;#names;#save;top;y; 
mapkey sv #view;#names;#retrieve;#side 
mapkey ss %sd;%vs; 
! 
mapkey tb #geom tools;#trim;#bound; 
mapkey tc #geom tools;#trim;#corner 
mapkey ti #tools;#intersect; 
mapkey tv #view;#names;#retrieve;#top 
