mapkey m1 ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `FLATEM`;#CL DATA;#NC CHECK;#RESOLUTION;\
mapkey(continued) #1x1 pix;#DISPLAY;#COLOR;#TOOL;#COLOR 1;#FILENAME;\
mapkey(continued) ~ Select `file_open` `Ph_list.Filelist`1  `plunge_flatem.ncl`;\
mapkey(continued) ~ Activate `file_open` `Open`;#RUN;#DONE/RETURN;
mapkey m2 ~ Activate `main_dlg_cur` `ProCmdViewNamePick.view`1;\
mapkey(continued) ~ Select `nameviewlist` `nv_list`1  `BULLEM`;#CL DATA;#NC CHECK;#RESOLUTION;\
mapkey(continued) #1x1 pix;#DISPLAY;#COLOR;#TOOL;#COLOR 1;#FILENAME;\
mapkey(continued) ~ Select `file_open` `Ph_list.Filelist`1  `plunge_bullem.ncl`;\
mapkey(continued) ~ Activate `file_open` `Open`;#RUN;#DONE/RETURN;
