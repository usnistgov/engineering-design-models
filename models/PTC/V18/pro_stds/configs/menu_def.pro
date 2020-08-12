!=========================================================
!							==
!	Standard Pro/ENGINEER menu_def.pro		==
!							==
!=========================================================

!  Date:	Feb. 17, 1995
!  Modified:	4/13/95 - moved STD-PARTS from MAIN to MODE menu.
!                         Added # to corner trim and bound trim.
!  Modified:	6/29/95 - Updated for Rev 15.
!  Modified:   12/19/95 - Updated for Rev 16.0, G. Leonard
!  Modified:   6/25/97 - Updated for Rev 18.0, C. Layne
!========================================================
line         2#points
circle       center/dia
arc          fillet
construct    constr#line
constr#line  horiz
ellipse      ctr/pnt/ang
draft#geom   line
deletion     delete#item


!=================================================================
!==  The following items add convenience for common operations	==
!=================================================================

@setbutton PART SWITCH#DIMS \
"#relations;#switch dim;#done;"\
"Switches dimensions from symbolic to numeric."

@setbutton ASSEMBLY SWITCH#DIMS \
"#relations;#switch dim;#switch dim;#done;"\
"Switches dimensions from symbolic to numeric."

@setbutton FEAT MODIFY "#done;#modify;"\
"Modify dimensions, tolerance formats, g-tols, etc."

@setbutton SKETCHER Trim#Corner \
"#geom tools;#trim;#corner;" \
"Corner trim"

@setbutton SKETCHER Trim#Bound \
"#geom tools;#trim;#bound;"
"Trim to boundary"


!=================================================================
!==  New Environment settings		==
!=================================================================

@setbutton ENVIRONMENT =================== 

@setbutton ENVIRONMENT Shd#srf#yes \
"#misc;#load config;$PRODIR/../pro_stds/configs/shd_surf_yes.pro;\
#environment;"\
"Surfaces and quilts will be shaded."

@setbutton ENVIRONMENT Shd#srf#no \
"#misc;#load config;$PRODIR/../pro_stds/configs/shd_surf_no.pro;\
#environment;"\
"Surfaces and quilts will not be shaded."

@setbutton ENVIRONMENT Silh#on \
"#misc;#load config;$PRODIR/../pro_stds/configs/silh_on.pro;\
#environment;"\
"Silhouette edges will be displayed."

@setbutton ENVIRONMENT Silh#off \
"#misc;#load config;$PRODIR/../pro_stds/configs/silh_off.pro;\
#environment;"\
"Silhouette edges will not be displayed."

!=================================================================
!==  The following items are for starting designs		==
!=================================================================
!
! The %part and %assy mapkeys are used because the setbutton commands
! exceed the 250 character limit.  To edit the menu operation you 
! must go to config.pro in the pro_stds/configs directory.
!
@setbutton MODE ===================

@setbutton MODE STD#PART "%part1;%part2;%part3;%part4;%part5;"\
"Create a standard part."

@setbutton MODE STD#ASSY "%assy1;%assy2;%assy3;%assy4;%assy5;"\
"Create a standard assembly."

@setbutton MODE STD#SHTMTL "%part1;%sheet2;%part3;%part4;%part5;"\
"Create a standard sheetmetal part."


!=================================================================
!==  Adding and modifying standard parameters			==
!=================================================================
!
! The standard parameters in this example are:
!		DRAWN_BY
!		MATERIAL
!		DESCRIPTION
!
! If you intend to modify or add to these parameters, you should
! modify the information below AND modify the the parameter names
! in the following files:
!
!		pro_stds/start_files/startpart.prt
!		pro_stds/start_files/startassy.asm
!		pro_stds/start_files/startshmtl.prt
!
! If you need to add several parameters, you may exceed the 250 
! character limit for a setbutton.  In this case, use a combination
! of mapkeys and setbuttons similar to the technique used above
! for "starting designs."


@setbutton PART#SETUP MOD#PARAMS \
"set up;#parameters;#modify;#DRAWN_BY;\
#modify;#MATERIAL;#modify;#DESCRIPTION;#done;"\
"Modify standard parameters."

@setbutton ASSEM#SETUP MOD#PARAMS \
"set up;#parameters;#modify;#DRAWN_BY;\
#modify;#MATERIAL;#modify;#DESCRIPTION;#done;"\
"Modify standard parameters."

@setbutton PART#SETUP ADD#PARAMS \
"set up;#parameters;#create;#string;DRAWN_BY;;\
#create;#string;MATERIAL;;#create;#string;DESCRIPTION;;#done;"\
"Add standard parameters."

@setbutton ASSEM#SETUP ADD#PARAMS \
"set up;#parameters;#create;#string;DRAWN_BY;;\
#create;#string;MATERIAL;;#create;#string;DESCRIPTION;;#done;"\
"Add standard parameters."


!=================================================================
!==  The following items are for quick orientations and views	==
!=================================================================

@setbutton ORIENTATION ===================

@setbutton ORIENTATION Horiz#90 "#angles;#horiz;90;#done/accept;"\
"Rotate 90 degrees about the horizontal."

@setbutton ORIENTATION Horiz#180 "#angles;#horiz;180;#done/accept;"\
"Rotate 180 degrees about the horizontal."

@setbutton ORIENTATION Vert#90 "#angles;#vert;90;#done/accept;"\
"Rotate 90 degrees about the vertical."

@setbutton ORIENTATION Vert#180 "#angles;#vert;180;#done/accept;"\
"Rotate 180 degrees about the vertical."

@setbutton ORIENTATION Norm#90 "#angles;#norm;90;#done/accept;"\
"Rotate 90 degrees normal to the screen."

@setbutton ORIENTATION Norm#180 "#angles;#norm;180;#done/accept;"\
"Rotate 180 degrees normal to the screen."

@setbutton VIEW#NAMES DEFAULT "#orientation;#default;#names;"\
"Default view."

!@setbutton ORIENTATION ======================

@setbutton ORIENTATION DEFINE#VIEWS "#names;#save;FRONT;\
%RIGHT;#save;RIGHT;\
%TOP;#save;TOP;\
%LEFT;#save;LEFT;\
%BOTTOM;#save;BOTTOM;\
%BACK;#save;BACK;"\
"Defines FRONT,RIGHT,TOP,LEFT,BOTTOM, and BACK views\
 based on current view."

@setbutton ORIENTATION DEFINE#ISO "#VIEW;#ANGLES;\
#HORIZ;25;#NORM;-23.5;#VERT;-40;#DONE/ACCEPT;#NAMES;#SAVE;iso;"\
"Defines ISOMETRIC view based on current view."


!=================================================================
!==  The following items are for useful tools in UTILITIES menu ==
!=================================================================

@setbutton_exec UTILITIES CLEAN#DIR \
"$PRODIR/../pro_stds/clean &"\
"Clean out temporary from current directory"

@setbutton_exec UTILITIES PURGE#DIR \
"purge &"\
"Purge the current working directory using the PTC purge command."

@setbutton_exec UTILITIES CALCULATOR \
"xcalc &"\
"Start xcalculator utility"

!=================================================================
!==  				Plotting 			==
!=================================================================
