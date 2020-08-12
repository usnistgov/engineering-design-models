WINDOWS_SCALE .8
bell no
SHADE_MFG_REF_MODELS yes
SAVE_DISPLAY no
WEB_LINK_FILE_READ YES
WEB_LINK_FILE_WRITE YES
WEB_LINK_PROE_READ YES
WEB_LINK_PROE_WRITE YES
DATUM_DISPLAY no
DATUM_POINT_DISPLAY no
AXIS_DISPLAY no
DISPLAY_COORDINATE_SYS no
DISPLAY HIDDENINVIS
MODEL_TREE_START NO
PRO_MF_CL_DIR ../../models/cl_data/
spin_center_display no
shade_with no
mapkey av1 #CL DATA;#NC CHECK;#TRIM PLANE;#CREATE TRIM;#SEL BY MENU;\
mapkey(continued) #FITTING.PRT;#DATUM;#NAME;~ Select `sellist0` `Namelist`1 `DTM1`;#FLIP;\
mapkey(continued) #OKAY;#RESOLUTION;#1x1 pix;#DISPLAY;#FILENAME;\
mapkey(continued) ~ Select `file_open` `Ph_list.Filelist`1 `b_turn_2.ncl`;\
mapkey(continued) ~ Activate `file_open` `Open`;#COLOR;#TOOL;#COLOR 1;#TRANSITION;#COLOR 7;\
mapkey(continued) #RUN;
mapkey kh #CL DATA;#NC SEQUENCE;#ALL OPERATIONS;\
mapkey(continued) #6: ROW1_RGH, Operation: OP020;#TIME INCREMENT;#Enter;.1;#DONE;
mapkey ii ~ Select `main_dlg_cur` `MenuBar1`1  `Windows`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Activate `main_dlg_cur` `Windows.psh_win_close`;
mapkey ss ~ Select `Odui_Dlg_01` `odui_steps`1  `ADJUST PATH ;\
mapkey(continued) ~ Activate `Odui_Dlg_01` `odui_steps`1  `ADJUST PATH ;\
mapkey(continued) ~ Select `smtsaw_adj` `AdjPathOptionList`1  `corners`;\
mapkey(continued) ~ Activate `smtsaw_adj` `AdjPathOptionList`1  `corners`;\
mapkey(continued) ~ Move `smtsaw_corners` `smtsaw_corners`2 22.525904 11.824047;
mapkey fc ~ Select `Odui_Dlg_01` `odui_steps`1  `ADJUST PATH ;\
mapkey(continued) ~ Activate `Odui_Dlg_01` `redefine`;\
mapkey(continued) ~ Select `smtsaw_adj` `AdjPathOptionList`1  `corners`;\
mapkey(continued) ~ Activate `smtsaw_adj` `DefinePush`;\
mapkey(continued) ~ Move `smtsaw_corners` `smtsaw_corners`2 22.525904 11.824047;
