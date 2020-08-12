 m1 
 ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `SHOW_PATHS`;#CL DATA;#OUTPUT;\ 
 #NC SEQUENCE;#1: DEFAULT_PATH, Operation: OP010;#TIME INCREMENT;#Enter;.05;\ 
 #DONE CL; 


 m2 
 #REPAINT; ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `SHOW_PATHS`;#CL DATA;#OUTPUT;\ 
 #NC SEQUENCE;#2: NEW_START_POINT, Operation: OP010;#TIME INCREMENT;#Enter;\ 
 .05;#DONE CL; 



 m3 
 #REPAINT; ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `SHOW_PATHS`;#CL DATA;#OUTPUT;\ 
 #NC SEQUENCE;#3: STRETCH_ENDS, Operation: OP010;#TIME INCREMENT;#Enter;.05;\ 
 #DONE CL; 



 m4 
 #REPAINT; ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `SHOW_PATHS`;#CL DATA;#OUTPUT;\ 
 #NC SEQUENCE;#4: LEAD_IN__LEAD_OUT, Operation: OP010;#TIME INCREMENT;#Enter;\ 
 .05;#DONE CL;#DONE;DONE OUTPUT; 


 m5 
 #REPAINT; ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `SHOW_PATHS`;#CL DATA;#OUTPUT;\ 
 #NC SEQUENCE;#5: STEP_DEPTH, Operation: OP010;#TIME INCREMENT;#Enter;.05;\ 
 #DONE CL; 



 m6 
 ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `NC_CHECK`;#CL DATA;#NC CHECK;\ 
 #RESOLUTION;#1x1 pix;#DISPLAY;#COLOR;#TOOL;#COLOR 1;#FILENAME;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `shannon`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `shannon`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `mfg_demos`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `mfg_demos`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `models`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `models`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `customize`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `customize`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `default_volume.ncl`;\ 
 ~ Activate `file_open` `Open`;#RUN; 


 m7 
 ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `NC_CHECK`;#CL DATA;#NC CHECK;\ 
 #RESOLUTION;#1x1 pix;#DISPLAY;#COLOR;#TOOL;#COLOR 1;#FILENAME;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `shannon`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `shannon`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `mfg_demos`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `mfg_demos`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `models`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `models`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `customize`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `customize`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `start_hole_volume.ncl`;\ 
 ~ Activate `file_open` `Open`;#RUN; 


 m8 
 ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `NC_CHECK`;#CL DATA;#NC CHECK;\ 
 #RESOLUTION;#1x1 pix;#DISPLAY;#COLOR;#TOOL;#COLOR 1;#FILENAME;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `shannon`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `shannon`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `mfg_demos`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `mfg_demos`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `models`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `models`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `customize`;\ 
 ~ Select `file_open` `Ph_list.Filelist`0;\ 
 ~ Activate `file_open` `Ph_list.Filelist`1 `customize`;\ 
 ~ Select `file_open` `Ph_list.Filelist`1 `helical_volume.ncl`;\ 
 ~ Activate `file_open` `Open`;#RUN;#DONE/RETURN;\ 
 ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\ 
 ~ Select `nameviewlist` `nv_list`1 `SHOW_HELIX`;#OUTPUT;#NC SEQUENCE;\ 
 #4: HELICAL_VOLUME, Operation: OP010;#TIME INCREMENT;#Enter;.05;#DONE CL;\ 
 #DONE;#DONE OUTPUT; 
