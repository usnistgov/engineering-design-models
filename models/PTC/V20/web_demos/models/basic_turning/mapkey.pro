mapkey dg @MAPKEY_LABELdrag ends;#SEQ SETUP;#ENDS;#DONE;#START;#SPECIFY;\ 
mapkey(continued) #DONE;@PAUSE_FOR_SCREEN_PICK;#EXT LENGTH;.5;#END;#SPECIFY;#DONE;\ 
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;#EXT LENGTH;.25;#DONE/RETURN;#PLAY PATH;#DONE CL; 
sketcher_readme_alert no 
DATUM_DISPLAY no 
DATUM_POINT_DISPLAY no 
AXIS_DISPLAY no 
DISPLAY_COORDINATE_SYS no 
DISPLAY SHADE 
SEARCH_PATH /gascar/user/mfg_demos/NC_WET_Demos/models/basic_turning 
! SHOW PARTS 
mapkey mk1 @MAPKEY_LABELShow parts;\ 
mapkey(continued) ~ Select `main_dlg_cur` `MenuBar1`1 `Windows`;\ 
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `Windows.psh_win_close`;\ 
mapkey(continued) ~ Select `main_dlg_cur` `MenuBar1`1 `File`;\ 
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;~ Activate `main_dlg_cur` `File.psh_open`;\ 
mapkey(continued) ~ Activate `file_open` `Inputname` \ 
mapkey(continued) `fitting.prt`;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
mapkey(continued) ~ Select `nameviewlist` `nv_list`1 `ISO2`;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
mapkey(continued) ~ Select `nameviewlist` `nv_list`1 `ISO1`;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
mapkey(continued) ~ Select `nameviewlist` `nv_list`1 `ISO2`; 
! 
mapkey mk2 @MAPKEY_LABELopen turning;\ 
mapkey(continued) ~ Select `main_dlg_cur` `MenuBar1`1 `Windows`;\ 
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `Windows.psh_win_close`;\ 
mapkey(continued) ~ Select `main_dlg_cur` `MenuBar1`1 `File`;\ 
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;~ Activate `main_dlg_cur` `File.psh_open`;\ 
mapkey(continued) ~ Update `file_open` `Inputname` \ 
mapkey(continued) `../mfg_demos/NC_WET_Demos/models/basic_turning/`;\ 
mapkey(continued) ~ Update `file_open` `Inputname` \ 
mapkey(continued) `turning.mfg`;\ 
mapkey(continued) ~ Activate `file_open` `Open`;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdEnvCsysDisp.ddisp`1;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
mapkey(continued) ~ Select `nameviewlist` `nv_list`1 `iso`;\
mapkey		#MACHINING;#NC SEQUENCE;\
mapkey(continued) #1: FACING, Operation: OP010;#SUSPEND ALL;\
mapkey(continued) ~ Select `main_dlg_cur` `ProCmdEnvMdlDisp.mdisp`1  `No hidden`;\
mapkey(continued) ~ Select `main_dlg_cur` `MenuBar1`1  `View`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Select `main_dlg_cur` `View.cb_view_mdlsetup`;\
mapkey(continued) ~ Close `main_dlg_cur` `View.cb_view_mdlsetup`;\
mapkey(continued) ~ Activate `main_dlg_cur` `psh_view_compdisp`;#SET CURRENT;\
mapkey(continued) ~ Select `open_rep` `replist`0;~ Select `open_rep` `replist`1  `VIS0001`;\
mapkey(continued) ~ Activate `open_rep` `OK`;#DONE/RETURN;

 
! 
mapkey mk3 @MAPKEY_LABELredefine facing;#MACHINING;\
mapkey(continued) #quit seq;#confirm;#machining;\
mapkey(continued) ~ Select `main_dlg_cur` `ProCmdEnvMdlDisp.mdisp`1  `No hidden`;\
mapkey(continued) ~ Activate `env_dlg` `Apply_`;~ Activate `env_dlg` `Close_`;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
mapkey(continued) ~ Select `nameviewlist` `nv_list`1 `turning`;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
mapkey(continued) ~ Select `nameviewlist` `nv_list`1 `TURNING2`;#NC SEQUENCE;\ 
mapkey(continued) #1: FACING, Operation: OP010;#SUSPEND ALL;#PLAY PATH;#DONE CL;#DONE; 
!
mapkey mk4 @MAPKEY_LABELNC chk face;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `TURNING3`;\
mapkey(continued) #MACHINING;#cancel;#PLAY PATH;#NC CHECK;#RUN;\
mapkey(continued) ~ Select `main_dlg_cur` `ProCmdEnvMdlDisp.mdisp`1  `No hidden`;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdEnvCsysDisp.ddisp`0;
!
mapkey mk5 @MAPKEY_LABELREDEFINE OTR_RGH;\
mapkey(continued) #MACHINING;#CONFIRM;#NC SEQUENCE;\ 
mapkey(continued) #2: RGH_OUTER, Operation: OP010;#SUSPEND ALL;#SEQ SETUP;#TURN PROFILE;#DONE;\ 
mapkey(continued) #PROFILE;#DONE;#REDEFINE PROFILE;\ 
mapkey(continued) ~ Select `Odui_Dlg_01` `odui_steps`1 `TURN PROFILE`;\ 
mapkey(continued) ~ Select `Odui_Dlg_01` `odui_steps`1 `TURN PROFILE`;\ 
mapkey(continued) ~ Select `Odui_Dlg_01` `odui_steps`1 `TURN PROFILE`;\ 
mapkey(continued) ~ Activate `Odui_Dlg_01` `odui_steps`1 `TURN PROFILE`;#SKETCH;\ 
mapkey(continued) ~ Close `mfginfo2` `mfginfo2`;\ 
mapkey(continued) ~ Select `main_dlg_cur` `ProCmdEnvMdlDisp.mdisp`1  `No hidden`;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `turning`;
! 
mapkey cf @MAPKEY_LABELload mapkey.pro;\ 
mapkey(continued) ~ Select `main_dlg_cur` `MenuBar1`1 `Utilities`;\ 
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\ 
mapkey(continued) ~ Select `main_dlg_cur` `Utilities.cb_util_pref`;\ 
mapkey(continued) ~ Close `main_dlg_cur` `Utilities.cb_util_pref`;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `psh_util_load_config`;mapkey.pro; 
!
mapkey nc_final @MAPKEY_LABELNC CHECK;#QUIT SEQ;#CONFIRM;#CL DATA;\ 
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
mapkey(continued) ~ Select `nameviewlist` `nv_list`1 `TURNING3`;#NC CHECK;#RUN;\ 
mapkey(continued) ~ Update `file_open` `Inputname` \ 
mapkey(continued) `../mfg_demos/NC_WET_Demos/models/basic_turning/`;\ 
mapkey(continued) ~ Update `file_open` `Inputname` \ 
mapkey(continued) `turning.ncl`;\ 
mapkey(continued) ~ Activate `file_open` `Open`; 
!
mapkey mk6 @MAPKEY_LABELnc_od_rgh;~ Activate `Odui_Dlg_01` `cancel`;\
mapkey(continued) ~ Activate `0_std_confirm` `OK`;#PLAY PATH;#NC CHECK;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `TURNING4`;#TRIM PLANE;#CREATE TRIM;\
mapkey(continued) #SEL BY MENU;#TURNING_WP.PRT;#DATUM;#NAME;\
mapkey(continued) ~ Select `sellist0` `Namelist`1  `DTM7`;#FLIP;#OKAY;#DISPLAY;#RUN;
!
mapkey mk7 @MAPKEY_LABELredefine otr_fin;#QUIT SEQ;#CONFIRM;#NC SEQUENCE;\
mapkey(continued) #3: FIN_OUTER, Operation: OP010;#SEQ SETUP;#TOOL;#DONE;
!
mapkey mk8 @MAPKEY_LABELprofile OD;~ Close `toolsetup` `toolsetup`;\
mapkey(continued) ~ Select `main_dlg_cur` `ProCmdEnvMdlDisp.mdisp`1  `No hidden`;\
mapkey(continued) #PLAY PATH;#TIME INCREMENT;#Enter;0.2000;#DONE CL;
!
mapkey mk9 @MAPKEY_LABELshade;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `iso`;\
mapkey(continued) ~ Select `main_dlg_cur` `MenuBar1`1  `Utilities`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Activate `main_dlg_cur` `Utilities.psh_util_env`;\
mapkey(continued) ~ Open `env_dlg` `ModDsply_OptMenu_Style`;\
mapkey(continued) ~ Close `env_dlg` `ModDsply_OptMenu_Style`;\
mapkey(continued) ~ Activate `env_dlg` `Apply_`;~ Activate `env_dlg` `Close_`;\
mapkey(continued) #QUIT SEQ;#CONFIRM;\
mapkey(continued) ~ Select `main_dlg_cur` `ProCmdEnvMdlDisp.mdisp`1  `Shading`;
!
mapkey mka1 @MAPKEY_LABELgrooving;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `GROOVE`;#QUIT SEQ;#CONFIRM;#NC SEQUENCE;\
mapkey(continued) #DONE/RETURN;#MACHINING;#NC SEQUENCE;#5: GROOVE2, Operation: OP010;\
mapkey(continued) #SUSPEND ALL;#PLAY PATH;#NC CHECK;#STEP SIZE;#ENTER;#Enter;.1;#RUN;
!
mapkey mka2 #ABORT;#QUIT SEQ;#CONFIRM;#DONE/RETURN;#MACHINING;#NC SEQUENCE;\
mapkey(continued) #6: INNR_RGH, Operation: OP010;#SUSPEND ALL;#PLAY PATH;#NC CHECK;#TRIM PLANE;\
mapkey(continued) #CREATE TRIM;#SEL BY MENU;#TURNING_WP.PRT;#DATUM;#NAME;\
mapkey(continued) ~ Select `sellist0` `Namelist`1  `DTM7`;#FLIP;#OKAY;#DISPLAY;#COLOR;#TOOL;\
mapkey(continued) #COLOR 1;~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `TURNING5`;#RUN;
!
mapkey hl @MAPKEY_LABELhidden line;\
mapkey(continued) ~ Select `main_dlg_cur` `ProCmdEnvMdlDisp.mdisp`1  `No hidden`;
mapkey $F5 @MAPKEY_LABELcoord;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdEnvCsysDisp.ddisp`0;
mapkey mk2 @MAPKEY_LABELopen turning;\


mapkey trim #CL DATA;#NC CHECK;#TRIM PLANE;#CREATE TRIM;#SEL BY MENU;\
mapkey(continued) #SEL BY MENU;#TURNING_WP.PRT;#DATUM;#NAME;\
mapkey(continued) ~ Select `sellist0` `Namelist`1  `DTM7`;#FLIP;#OKAY;#DISPLAY;
