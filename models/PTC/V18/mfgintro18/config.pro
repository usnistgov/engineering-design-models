!****************************************************************************** 
!**************** config.pro for MFG Intro Demo (NOV 95) ********************** 
!****************************************************************************** 

! Menus 
	
provide_pick_message_always yes 
prompt_on_exit no 
menu_horizontal_hint right 
thermo_position_hint NO_WINDOW_OVERLAP 

! Display Options 

windows_scale 0.85 
display hiddenvis 
spin_center_display NO
spin_control DRAG 
dim_offscreen_limit 1 
visible_message_lines 1 

! Miscellaneous 

bell no 
default_dec_places 3 
sketcher_dec_places 3 
userguide_help no 
info_output_mode both 

! Search paths (turning) 
search_path ./tools 
search_path ./fixture 
trail_dir ./trails 

! Manufacturing 

MFG_IJK_NUM_DIGITS 4 
MFG_XYZ_NUM_DIGITS 4 
SHADE_MFG_REF_MODELS yes 
pro_mf_cl_dir ./cl_files 

pro_mf_param_dir ./params 
pro_mf_tprm_dir ./tools 
PRO_GROUP_DIR ./groups 

mapkey cp #setup;#parameters;#done;#select all;#done sel;#all 
protable_in_background yes 
store_tool_path_file yes 
CL_ARROW_SCALE 0 

! Drawing and Formats 

drawing_file_editor protab 
allow_move_attach_in_dtl_move yes 
pen1_line_weight 2 
LANDSCAPE_POSTSCRIPT_PRINT no 

! Mapkeys -- General 

mapkey dr #Done-Return; 
mapkey rd #Done-Return; 
mapkey doa #Done-Accept; 
mapkey nh #environment;#no hidden;%dr 
mapkey hl #environment;#hidden line;%dr 
mapkey kw #environment;#featinfowin;%dr 

! Mapkeys -- Feature Creation 

mapkey dp #Feature;#Create;#Datum;#Plane; 
mapkey d. #Feature;#Create;#Datum;#Point; 
mapkey dc #Feature;#Create;#Datum;#Curve; 
mapkey da #Feature;#Create;#Datum;#Axis; 
mapkey ds #Feature;#Create;#Surface;#New; 
mapkey sp #Feature;#Create;#Solid;#Protrusion; 
mapkey dd #feature;#create;#datum;#plane;#default 

! Mapkeys -- Layer Operations 

!create_numbered_layers yes 
mapkey lc #Layer;#Setup Layer;#Create 
mapkey ls #Layer;#Set Items; 
mapkey ld #Layer;#Set Display; 

! Mapkeys -- View Operations 

mapkey vd #View;#Orientation;#Default;%rd 
mapkey vs #View;#Orientation;#Spin; 
mapkey zi #View;#Pan/Zoom; 
mapkey zz %zi 
mapkey $f8 %zi 
mapkey zo #View;#Pan/Zoom;#Zoom Out;%rd 
mapkey zx %zo 
mapkey $f9 %zo 
mapkey zp #View;#Pan/Zoom;#Pan; 
mapkey zr #View;#pan/zoom;#Reset;%rd 
mapkey za %zr 
mapkey $f10 %zr 
mapkey sd #View;#Cosmetic;#Shade;#Display;%rd 
mapkey sh %sd 
mapkey rp #View;#Repaint;%rd 
mapkey rr %rp 
mapkey $f7 %rp 
mapkey %f6 #dbms;#save;#done-return 
mapkey vn #view;#names;#retrieve; 

mapkey rg #regenerate;#automatic; 

mapkey s1 #VIEW;#NAMES;#SWP1_ISO; 
mapkey s2 #VIEW;#NAMES;#SWP2_ISO; 
mapkey s3 #VIEW;#NAMES;#SWP3_ISO; 
mapkey s4 #VIEW;#NAMES;#SWP4_ISO; 
mapkey s5 #VIEW;#NAMES;#SWP5_ISO; 
mapkey s6 #VIEW;#NAMES;#SWP5_FRNT; 

	
!!!!!! mapkeys for turning demo !!!!!!

mapkey gg #utilities;#group;#search/retr
mapkey rt #retrieve;#tool library;#done;?;#in session
mapkey fs #modify;#mod assem;#feature;#delete;#sel by menu;%ii
mapkey ii #last feature;#done sel;#done;#quit window

!!! TURN FIXTURE ON OR OFF !!!
mapkey $f1 #mfg setup;#fixture;#activate;#main_spindle;%bh;%kk
mapkey $f2 #mfg setup;#fixture;#activate;#sub_spindle;%bh;%kk
mapkey $f3 #mfg setup;#fixture;#activate;#cutoff;%kk
mapkey kk #done/return;#done/return

!!! BLANK OR UNBLANK HOME POINTS !!!
mapkey bh #view;#layer disp;#sub_home;#main_home;#repaint
mapkey mh #view;#layer disp;#sub_home;#repaint
mapkey ms #view;#layer disp;#main_home;#repaint
mapkey mc #view;#layer disp;#cutoff_start;#repaint

!!! NC CHECK !!!
mapkey ck #resolution;#2x2 pix;#display;#color;#tool;#color 1;%nce
mapkey ce #run;#create;#nc sequence
mapkey ncc #NC CHECK;#DISPLAY;#COLOR;#RESTORE FILE;#RUN;

!!!SUPPRESS FEATURES!!!
mapkey ss #modify;#mod assem;#feature;#suppress;#sel by menu;%ff
mapkey ff #number;43;;#done;#done/return;#done;#done/return

!!!RESTORE SHADE FILES!!!
mapkey st #view;#cosmetic;#shade;#restore;commercial
retain_display_memory yes
store_display yes
variant_drawing_item_sizes yes
