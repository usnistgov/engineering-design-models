
var WindowID = -1


// ACTIVATE PRO/E WINDOW **** This function is not active as of H-03-17******//
//function activate_window()
//{
//        ret = document.wm.pwlWindowActivate(parseInt(WindowID));
//}

// ALTERNATE FUNCTION FOR ACTIVATE WINDOW //
function activate_window()
{
	aw2="~ Select `main_dlg_cur` `MenuBar1`1  `Windows`";
	aw3="~ Close `main_dlg_cur` `MenuBar1`";
	aw4="~ Activate `main_dlg_cur` `Windows.psh_win_activate`";
	ret = document.wm.pwlMacroLoad(aw2);
	ret = document.wm.pwlMacroLoad(aw3);
	ret = document.wm.pwlMacroLoad(aw4);
}

function quit_wind()
{
// Activates Window Close menu sequence //
	qw1="~ Select `main_dlg_cur` `MenuBar1`1  `Windows`";
	qw2="~ Close `main_dlg_cur` `MenuBar1`";
	qw3="~ Activate `main_dlg_cur` `Windows.psh_win_close`";
	ret = document.wm.pwlMacroLoad(qw1);
	ret = document.wm.pwlMacroLoad(qw2);
	ret = document.wm.pwlMacroLoad(qw3);
}

function component_display(state)
{
	cd1="~ Select `main_dlg_cur` `MenuBar1`1  `View`";
	cd2="~ Close `main_dlg_cur` `MenuBar1`";
	cd3="~ Select `main_dlg_cur` `View.cb_view_mdlsetup`";
	cd4="~ Close `main_dlg_cur` `View.cb_view_mdlsetup`";
	cd5="~ Activate `main_dlg_cur` `psh_view_compdisp`;#SET CURRENT;";
	cd6="~ Select `open_rep` `replist`1  `"+state+"`;~ Activate `open_rep` `OK`; #DONE/RETURN";
	ret = document.wm.pwlMacroLoad(cd1);
	ret = document.wm.pwlMacroLoad(cd2);
	ret = document.wm.pwlMacroLoad(cd3);
	ret = document.wm.pwlMacroLoad(cd4);
	ret = document.wm.pwlMacroLoad(cd5);
	ret = document.wm.pwlMacroLoad(cd6);
}

preview_check=0;
check="no";
retrieve_check="no";

// ###### connect to Pro/ENGINEER ###
function check_connect(){
machine_mount=document.wm.pwlEnvVariableGet('PRO_NC_DEMO_MNT');
        if(machine_mount.Status == false){
        mnt_msg = "Your workstation does not have the proper environment variable set\n"+
                        "PRO_NC_DEMO_MNT needs to be set to your Pro/NC mounted directory\n";
        alert(mnt_msg);
        }
else{         nfs_mount_dir = machine_mount.Value;




 stat=document.wm.pwlProEngineerConnect();
  if (stat.Status){
    proe_status = "Connecting to Pro/ENGINEER";
 check = "yes";
  }
  else{
    proe_status="Attempting to Start Pro/ENGINEER";
    var msg = "\nPro/ENGINEER is not currently running.\n Click OK to start Pro/ENGINEER.\n";
    if (confirm(msg)) {
      stat=document.wm.pwlProEngineerStartAndConnect();
      if (stat.Status){
         proe_status = "Starting Pro/ENGINEER";
         check = "yes";
      }
      else{
         proe_status = " ERROR! Could not Connect to Pro/ENGINEER";
         check="no";
      }
  }
} // end of confirm?
}
} // end of check_connect function

//  ######  retrieve function ###
function retrieve_model(model,path){
proe_status="Checking for Pro/ENGINEER";
check_connect();
full_path=nfs_mount_dir+path;
 if (check == "yes"){
   proe_status="Retrieving model:"+model;
      stat = document.wm.pwlMdlOpen(model, full_path, true);
        if (stat.Status){
           // lib_winid = stat.WindowId;
           proe_status = "Model Retrieved";
           retrieve_check="yes";
	}
        else{
        proe_status = "Error! Unable to retrieve model: "+model;
        retrieve_check="no";
        }
 } // end if check

activate_window();

} // end of retrieve function


//  ######  retrieve function ###


function retrieve_model_session(model,path){
proe_status="Checking for Pro/ENGINEER";
check_connect();
full_path=nfs_mount_dir+path;
 if (check == "yes"){
   proe_status="Retrieving model:"+model;
   stat = document.wm.pwlMdlOpen(model, full_path, false);
        if (stat.Status){
            proe_status = "Model Retrieved";
           retrieve_check="yes";
	}
        else{
        proe_status = "Error! Unable to retrieve model: "+model;
        retrieve_check="no";
        }
 } // end if check
} // end of retrieve function

//  ######  retrieve function ###
function open_model_session(model,path){
proe_status="Checking for Pro/ENGINEER";
check_connect();
full_path=nfs_mount_dir+path;
 if (check == "yes"){
   proe_status="Retrieving model:"+model;
   stat = document.pwl.pwlMdlOpen(model, full_path, false);
        if (stat.Status){
            proe_status = "Model Retrieved";
           retrieve_check="yes";
	}
        else{
        proe_status = "Error! Unable to retrieve model: "+model;
        retrieve_check="no";
        }
 } // end if check
} // end of retrieve function




function View_Repaint()
     {
	// lib_winid comes from function 'retrieve_model'//
	// WindowID = lib_winid
        ret = document.wm.pwlWindowRepaint(WindowID);
     }








function Play_Path(seq_num, seq_name, op_name, time_incr)

{

	macro1 = "#CL DATA;#All Operations;#NC SEQUENCE;#" + seq_num + ": " + seq_name + ", Operation: " + op_name;

        ret = document.wm.pwlMacroLoad(macro1);

	ret = document.wm.pwlWindowRepaint(WindowID);

	macro2 = "#TIME INCREMENT;#Enter;" + time_incr + ";#DONE";

        ret = document.wm.pwlMacroLoad(macro2);

}





function Play_Path_Disp_Cycles(seq_num, seq_name, op_name, time_incr)

{

	macro1 = "#CL DATA;#All Operations;#NC SEQUENCE;#" + seq_num + ": " + seq_name + ", Operation: " + op_name;

        ret = document.wm.pwlMacroLoad(macro1);

	ret = document.wm.pwlWindowRepaint(WindowID);

	macro2 = "#TIME INCREMENT;#Enter;" + time_incr + ";#DISP CYCLES;#DONE";

        ret = document.wm.pwlMacroLoad(macro2);

}







function Play_Path_CL(seq_num, seq_name, op_name, time_incr)
{
	macro1 = "#CL DATA;#All Operations;#NC SEQUENCE;#" + seq_num + ": " + seq_name + ", Operation: " + op_name;
        ret = document.wm.pwlMacroLoad(macro1);
	ret = document.wm.pwlWindowRepaint(WindowID);
	macro2 = "#TIME INCREMENT;#Enter;" + time_incr + ";#COMPUTE CL;#DONE";
        ret = document.wm.pwlMacroLoad(macro2);
}

function Play_Path_ALL_OPS(seq_num, seq_name, op_name, time_incr)
{
        macro1 = "#CL DATA;#NC SEQUENCE;#ALL OPERATIONS;#" + seq_num + ": " + seq_name + ", Operation: " + op_name;
        ret = document.wm.pwlMacroLoad(macro1);
        ret = document.wm.pwlWindowRepaint(WindowID);
        macro2 = "#TIP;#TIME INCREMENT;#Enter;" + time_incr + ";#DONE";
        ret = document.wm.pwlMacroLoad(macro2);
}





function show_file(seq_num, seq_name, op_name, cl_file_name)
{
	macro1 = "#CL DATA;#EDIT;#NC SEQUENCE;#" + seq_num + ": " + seq_name + ", Operation: " + op_name;
	ret = document.wm.pwlMacroLoad(macro1);
	//ret = document.wm.pwlWindowRepaint(WindowID);
	macro2 = "#CANCEL;~ Select `file_open` `Ph_list.Filelist` 1  `" + cl_file_name + "`";
	macro3 = "~ Activate `file_open` `Open`";
	ret = document.wm.pwlMacroLoad(macro2);
	ret = document.wm.pwlMacroLoad(macro3);
}


function NC_Check(resolution, cl_file_name)
{
	macro1 = "#CL DATA;#NC CHECK;#RESOLUTION;#" + resolution + " pix;#DISPLAY;#COLOR;#TOOL;#COLOR 1;#TRANSITION;#COLOR 7;#RUN;";
	macro2 = "~ Select `file_open` `Ph_list.Filelist`1  `" + cl_file_name + "`";
	macro3 = "~ Activate `file_open` `Open`";
	ret = document.wm.pwlMacroLoad(macro1);
	ret = document.wm.pwlMacroLoad(macro2);
	ret = document.wm.pwlMacroLoad(macro3);
}





function NC_Check_clip(resolution, cl_file_name, clip_part, clip_plane)
{
        macro1 = "#CL DATA;#NC CHECK;#TRIM PLANE;#CREATE TRIM;#SEL BY MENU;#SEL BY MENU;#" + clip_part + ";";
	macro2 = "#DATUM;#NAME;~ Select `sellist0` `Namelist`1  `" + clip_plane + "`;#FLIP;#OKAY;#DISPLAY;";
	macro3 = "#RESOLUTION;#" + resolution + " pix;#DISPLAY;#COLOR;#TOOL;#COLOR 1;#TRANSITION;#COLOR 7;#RUN;";
        macro4 = "~ Select `file_open` `Ph_list.Filelist`1  `" + cl_file_name + "`";
        macro5 = "~ Activate `file_open` `Open`";
        ret = document.wm.pwlMacroLoad(macro1);
        ret = document.wm.pwlMacroLoad(macro2);
        ret = document.wm.pwlMacroLoad(macro3);
	ret = document.wm.pwlMacroLoad(macro4);
	ret = document.wm.pwlMacroLoad(macro5);
}




function NC_Check_nck(resolution, cl_file_name, nck_file_name)
{
macro1 = "#CL DATA;#NC CHECK;#RESOLUTION;#" + resolution + " pix;#DISPLAY;#COLOR;#TOOL;#COLOR 1;#TRANSITION;#COLOR 7;#RESTORE;";
macro2 = "~ Update `file_open` `Inputname` `"+ full_path+nck_file_name +"`;";
macro3 = "~ Activate `file_open` `Open`;~ Restore `main_dlg_cur` `main_dlg_1`;#DISPLAY;"
macro4 = "#FILENAME;~ Select `file_open` `Ph_list.Filelist`1  `" + cl_file_name + "`;";
macro5 = "~ Activate `file_open` `Open`;#RUN";
	ret = document.wm.pwlMacroLoad(macro1);
	ret = document.wm.pwlMacroLoad(macro2);
	ret = document.wm.pwlMacroLoad(macro3);
	ret = document.wm.pwlMacroLoad(macro4);
	ret = document.wm.pwlMacroLoad(macro5);
}


function ViewSet(model, view_name)
{
	 ret = document.wm.pwlViewSet(model, view_name);

}

//  ######  regenerate function ###
function regenmodel(model_name){
	retrieve_model(model_name);
	if (retrieve_check == "yes"){
		feat_stat = document.wm.pwlMdlRegenerate(model_name);
	}
}
// end of regenmodel


//  ######  mapkey regenerate function ###
function new_regenmodel(){

	reg1="#REGENERATE;#AUTOMATIC;#SUPP FAIL;#DONE;";
	ret = document.wm.pwlMacroLoad(reg1);

}
// end of mapkey regenmodel

//  ######  suppress function ###


function suppressfeat(model_name, feat_num){
	retrieve_model(model_name);
	if (retrieve_check == "yes"){
		feat_stat = document.wm.pwlFeatureSuppressByID(model_name,parseInt(feat_num),true);
	}
}
// end of suppressfeat

//  ######  resume function ###
	function resumefeat(model_name, feat_num){
	retrieve_model(model_name);
	if (retrieve_check == "yes"){
		feat_stat = document.wm.pwlFeatureResumeByID(model_name,parseInt(feat_num),true);
	}
}// end of resumefeat


//  ######  modify dimension function ###
function moddim(model_name,dim,value){
	retrieve_model(model_name);
	if (retrieve_check == "yes"){
		feat_stat = document.wm.pwlDimensionValueSetByID(model_name, dim, value);
	}
}// end of moddim


//  ######  blank layer function ###
function layer_blank (model, layer_name){
		layer_stat=document.wm.pwlLayerDisplaySet(model, layer_name, parseInt(document.wm.PWL_DISPLAY_TYPE_BLANK));
	}
// end of blank_layer function

//  ######  display layer function ###


function layer_normal (model, layer_name){
		layer_stat=document.wm.pwlLayerDisplaySet(model, layer_name, parseInt(document.wm.PWL_DISPLAY_TYPE_NORMAL));
}
// end of layer_normal function


//  ######  activate simplified rep   ###
function Activate_SimpRep (model, rep_name)
{
	rep_stat=document.wm.pwlSimprepActivate(model, rep_name);
}


// end of activate simplified rep function

//  ######  activate master rep   ###
function Activate_Master_Rep (model)
{
        rep_stat=document.wm.pwlSimprepMasterActivate(model);
}


// end of activate master rep function

// ######## Set Environment Display  #####//
function set_display(value)
{
	//value can be:  wireframe, hiddenvis, hiddeninvis, or shade //
	env_stat=document.wm.pwlConfigoptSet('display', value);
}
// end of Set Environment Display //

// ######## Set Csys Display  #####//
function csys_display(value)
{
          //value can be:  yes or no //
          env_stat=document.wm.pwlConfigoptSet('display_coordinate_sys', value);
}
// end of Set Csys Display //

// ######## Set Points Display  #####//
function points_display(value)
{
          //value can be:  yes or no //
          env_stat=document.wm.pwlConfigoptSet('datum_point_display', value);
}
// end of Set Points Display //

// ######## Set Search Path  #####//
function search_path(path)
{
          //value can be://
          env_stat=document.wm.pwlConfigoptSet('search_path', nfs_mount_dir + path);
}
// end of Set Points Display //

// ###########  Family Table Replace #########//


function component_replace(assembly, new_component, id)
{
alert (assembly);
alert (new_component);
alert (id);
	comp_id=document.wm.pwluIntArrayAlloc(1);
	comp_id[0]=parseInt(id);
	replace_stat=document.wm.pwlAssemblyComponentReplace(assembly, new_component, parseInt(1), comp_id);
	
	if (!replace_stat.Status) {
		var fail_reason = replace_stat.ErrorString;
		var fail_ec = replace_stat.ErrorCode;
		alert("Failure"+" : "+new_component+" : "+fail_reason+" : "+parseInt(fail_ec));
		}
}

function mp_replace(comp_old, comp_new){
	l1="#MFG MODEL;#REPLACE;#SEL BY MENU;#"+comp_old+";";
	l2="#" +comp_new+ ";#DONE/RETURN;"
	ret = document.wm.pwlMacroLoad(l1);
	ret = document.wm.pwlMacroLoad(l2);
}
