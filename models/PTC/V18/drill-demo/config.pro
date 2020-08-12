!********** MACHINE-DEPENDANT OPTIONS ********** 
MODEL_TREE_START no 
!GRAPHICS STARBASE 
WINDOWS_SCALE .92 
!HEADER_MENU YES 
!HEADER_MENU_ALIGNMENT RIGHT 

!********** SYSTEM OPTIONS ********** 

PLOTTER POSTSCRIPT 
LANDSCAPE_POSTSCRIPT_PRINT NO 

BELL NO 
VISIBLE_MESSAGE_LINES 4 
MENU_HORIZONTAL_HINT RIGHT 
THERMO_POSITION_HINT NO_WINDOW_OVERLAP 
AUTO_REGEN_VIEWS YES 
RETAIN_DISPLAY_MEMORY YES 
FIT_OBJECT_IN_WINDOW YES 
SET_TRAIL_SINGLE_STEP NO 

!********** THOMAS' OPTIONS ********* 

!**** DON'T EXPORT GEOMETRY ON LAYERS **** 
INTF_OUT_BLANKED_ENTITIES NO 
FIX_BOUNDARIES_ON_IMPORT NO 

!mesh_spline_surf yes 
spin_control drag 
!System_letter_color 100 100 0 
system_background_color 0 0 0 
!System_highlight_color 79 0 80 

!********** DEMO OPTIONS ********** 

!COPMPRESS_OUTPUT_FILES YES 


!********** WORKING OPTIONS ********** 

DISPLAY HIDDENVIS 
!SHADE_SURFACE_FEAT NO 

PRO_UNIT_LENGTH unit_mm 

!DEFAULT_DEC_PLACES 2 
!SKETCHER_DEC_PLACES 2 
!TRAIL_DIR ./trails 

SET_ZERO_CURVATURE_COLOR YES 
!********** DEFAULT LAYER ASIGNMENTS ********** 

!DEF_LAYER LAYER_AXIS _AXES 
!DEF_LAYER LAYER_CSYS _CSYS 
!DEF_LAYER LAYER_CURVE _CURVES 
!DEF_LAYER LAYER_DATUM _PLANES 
!DEF_LAYER LAYER_DATUM_POINT _POINTS 
!DEF_LAYER LAYER_QUILT _SURFS 
!DEF_LAYER LAYER_SURFACE _SURFS 
	


!********** WORKING MAPKEYS ********** 

mapkey rg #Regenerate; 
mapkey $F3 #Quit Window;#Mode;#Part;#Create; 
mapkey np %$F3;#Feature;#Create;#Datum;#Plane;#Offset 

!********** VIEW MAPKEYS ********** 

mapkey vd #View;#Default;#Done-Return; 
mapkey rr #View;#Repaint;#Done-Return; 
mapkey rs #View;#Pan/Zoom;#Reset; 
mapkey zz #View;#Pan/Zoom;#Zoom In; 
mapkey xx #View;#Pan/Zoom;#Zoom Out; 
mapkey pp #View;#Pan/Zoom;#Pan; 

mapkey sd #View;#Cosmetic;#Shade;#Display;#Done-Return; 
mapkey ss #View;#Cosmetic;#Shade;#Display;#ORIENTATION;#SPIN 
mapkey sp #View;#Spin; 

mapkey vf #View;#Names;#Retrieve;#front;#done-return 
mapkey vbk #View;#Names;#Retrieve;#back;#done-return 
mapkey vt #View;#Names;#Retrieve;#top;#done-return 
mapkey vbo #View;#Names;#Retrieve;#bottom;#done-return 
mapkey vl #View;#Names;#Retrieve;#left;#done-return 
mapkey vr #View;#Names;#Retrieve;#right;#done-return 

mapkey v1 #View;#Names;#Retrieve;#work_1;#done-return 
mapkey v2 #View;#Names;#Retrieve;#work_2;#done-return 
mapkey v3 #View;#Names;#Retrieve;#work_3;#done-return 

mapkey $F1 #Feature;#Create;#Surface; 
mapkey do #Environment;#Disp DtmPln;#done-return; 
mapkey $F5 #View;#Layer Disp;#Blank;#AXIS;#Done Sel;%rr 
mapkey sc %$F1;#New;#Copy;#Done;#Select;#Surfaces;#Done; 
mapkey sj %$F1;#Surface;#Merge;#Join; 
mapkey sm %$F1;#Transform;#Mirror;#Done; 
mapkey bb %$F1;#New;#Advanced;#Done;#Boundaries;#Done;#Done; 

mapkey $F2 #Create;#Protrusion; 
mapkey th #Done/Return;%$F2;#Use Quilt;#Thin;#Done; 

mapkey se #Sel By Menu;#Datum;#Name; 

mapkey o #okay; 
mapkey a #accept; 
