C : ********************************************
C : *                                          *
C : *   Yvan Marceau                           *
C : *   June, 10 1994                          *
C : *   Volume Calculation                     *
C : ********************************************
C : *        Modified:                         *
C : *                                          *
C : *   Michael Ricci                          *
C : *       added translucent display of "oil" *
C : *	- Update to Master Series 6 Jan. '98   *
C : ********************************************
C :
K : /ta mm
K : #ECHO none
K : /w gl of
C :
C : ////////////// Set Defaults //////////////
C :
K : #on_error pause
K : #DELETE ALL
K : #parameter = 0
K : #oil = 0
K : #level = -999
K : #iterations = 10
K : #flag_est = 0
K : #declare vol_mm(50)
K : #declare err_mm(50)
K : #declare rlevel(50)
K : #inc = 7
C :
K : /o p p 5; d ad of okay okay
C :
C : ////////////// Prompt to Continue ////////////
C :
K : cl
K : #output "-------------------- Warning -------------------------"
K : #output "1 - This program will delete the history of"
K : #output "    the part currently on the workbench."
K : #output "2 - Make sure that this part is a copy of the original."
K : #output "3 - Only the part of interest can be on the workbench."
K : #output "4 - The program assumes that gravity acts in the -Y direction."
C :
K : #menu "Okay to continue?" answer 1 2,
K :       "Y - Yes",
K :       "N - No"
C :
K : #if (z_inp_stat le 1) then GOTO DONE
C :
K : #if (answer eq 2) then GOTO DONE
C :
C : //////////////Store workbench part and create copy
C :
K : /ma na
K : LAB
K : ?
K : Untitled1
K : B
K : Main
K : N
K : z_temp
K : Okay
K : DON
K : /ma ma
K : FS
K : ON
K : F
K : C
K : QG
K : I
K : z_temp
K : Okay
K : ET
K : 2
K : D
K : C
K : N
K : z_temp_copy
K : Okay
K : FS
K : OF
K : 
K : canc
K : /ma pu
K : LAB
K : ?
K : z_temp
K : 
C : ////////////// Delete History of the Workbench Part /////////////
C :
K : /mo de lab;
K : y
K : don
C :
C : ///////////// Calculate Maximum Volume of Part ///////////
K :
K : /o u u mm
K : /li pr lab;pt;; su cl okay
K : /li pr lab;pt;; cm li okay
K : #capacity = z_list(38)
K : #minvol = z_list(38)
K : #quart = (capacity/(1.0e9))*(1057.00)
K : #liter = (capacity/(1.0e9))*(1000.00)
C :
C : ///////////// Lower Bound of Part ///////////
C :
K : cl
K : #output "---------- Prompt -----------"
K : #output "Estimate lower bound of part"
C :
K : /v e 0 0 1 0
K : au
K : /li
K : #ECHO none 
K : me cha coo scr
? :
K : #ECHO none
K : #low = z_list(3)
C :
C : ///////////// Set workplane origin to low y bound /////////
K :
K : #ON_ERROR IGNORE
K : /or mo lab fil pm;
K : 14
K : d
K : po; ;
K :
K : t key
K : 0 0 0
K : 0 low 0
K : don:
K :
K : #ON_ERROR PAUSE
K : #low = 0.0
C :
C : ///////////// Upper Bound of Part ///////////
C :
K : cl
K : #output "---------- Prompt -----------"
K : #output "Estimate upper bound of part"
C :
K : /li
K : #ECHO none
K : me cha coo scr
? :
K : #ECHO none
K : #high = z_list(3)
K : #minlevel = z_list(3)
C :
C : //////////// Parameters Menu /////////////
C :
K : #MAIN:
K : cl
K : #menu "Enter calculation parameters" parameter 5 5,
K :       "SO - Set Oil",
K :       "SI - Set Iterations",
K :       "ES - Estimate",
K :       " ST - Status",
K :       "CA - Calculate "
C :
K : #if (z_inp_stat le 1) then GOTO DONE
C :
K : #if (parameter eq 1) then GOTO SET_OIL
K : #if (parameter eq 2) then GOTO SET_IT
K : #if (parameter eq 3) then GOTO ESTIMATE
K : #if (parameter eq 4) then GOTO STATUS
K : #if (parameter eq 5) then GOTO CHECK
C :
C :
C : //////////////////////// Set Oil Volume //////////////////////
C :
K : #SET_OIL:
K : #menu "Enter units of measurement for the oil " units 1 2,
K :       "QU - Quarts",
K :       "LI - Liters"
C :
K : #if (z_inp_stat le 1) then GOTO MAIN
C :
K : #input "Enter the volume of oil" oil
K : #if (z_inp_stat le 1) then GOTO MAIN
K : #if (z_inp_stat eq 2) then GOTO SET_OIL
K : #if (oil le 0) then GOTO SET_OIL
C :
C : -------- Convert liters or quarts to cubic mm's ---------
C :
K : #if (units eq 1) then,
K :     #vol_oil = (oil/1057.00)*(1.0e9)
K : #if (units eq 2) then,
K :     #vol_oil = (oil/1000.00)*(1.0e9)
C :
C : --------- Check if oil volume exceeds pan capacity -----------
C :
K : #if (vol_oil gt capacity and units eq 1) then,
K :     #output "Err - Oil volume exceeds pan capacity ";,
K :     #output "      Pan capacity  = " quart " quarts";,
K :     #GOTO SET_OIL
K : #if (vol_oil gt capacity and units eq 2) then,
K :     #output "Err - Oil volume exceeds pan capacity ";,
K :     #output "      Pan capacity  = " liter " liters";,
K :     #GOTO SET_OIL
C :
C : ---------- Set the tolerance -----------
C :
K : #SET_TOL:
K : #input "Enter the allowable error (+/-)" tolerance
K : #if (z_inp_stat le 1) then GOTO MAIN
K : #if (z_inp_stat eq 2) then GOTO SET_TOL
C :
C : -------- Convert liters or quarts to cubic mm's ---------
C :
K : #if (units eq 1) then,
K :     #vol_tol = (tolerance/1057.00)*(1.0e9)
K : #if (units eq 2) then,
K :     #vol_tol = (tolerance/1000.00)*(1.0e9)
C :
K : #GOTO MAIN
C :
C : ///////////////////////// Set ITERATIONS //////////////////////////
C :
K : #SET_IT:
K : #input "Enter the maxiumum iterations" iterations
K : #if (z_inp_stat le 1) then GOTO MAIN
K : #if (z_inp_stat eq 2) then GOTO SET_IT
K : #if (iterations le 0) then GOTO SET_IT
C :
K : #GOTO MAIN
C :
C : ///////////////////// Estimate Liquid Level ////////////////////////
C :
K : #ESTIMATE:
K : cl
K : #output "---------- Prompt -----------"
K : #output "Estimate oil by a screen pick"
C :
K : /v e 0 0 1 0
K : au
K : /li
K : #ECHO none 
K : me cha coo scr
? :
K : #ECHO none
K : #level = z_list(3)
K : #flag_est = 1
K : #GOTO MAIN
C :
C : ////////////////////////// Parameter Status ///////////////////////
C :
K : #STATUS:
K : cl
K : #output "------------ Parameter Status -------------"
K : #output " "
K : #output "Capacity   = " capacity " mm^3"
K : #output "Capacity   = " quart " quarts"
K : #output "Capacity   = " liter " liters"
K : #output "Oil volume = " vol_oil " mm^3"
K : #if (units eq 1) then,
K :     #output "Oil volume = " oil " quarts"
K : #if (units eq 2) then,
K :     #output "Oil volume = " oil " liters"
K : #output "Tolerance  = " vol_tol " mm^3 (+/-)"
K : #if (units eq 1) then,
K :     #output "Tolerance  = " tolerance " quarts (+/-)"
K : #if (units eq 2) then,
K :     #output "Tolerance  = " tolerance " liters (+/-)"
K : #output "Maximum iterations = " iterations
K : #output " "
K : #output "Hit <enter> to continue"
C :
? :
K : #GOTO MAIN
C :
C : ////////////////////// Check the Parameters /////////////////////////
C :
K : #CHECK:
K : #if (oil le 0) then GOTO SET_OIL
K : #if (level lt 0) then #level = (high-low)/2
K : #if (flag_est eq 0) then #GOTO ESTIMATE
C :
C : ////////////////////// Open a File For Report Generation ///////////
C :
K : #open report "report.dat"
C :
C : ////////////////////// CALCULATE the LIQUID LEVEL //////////////////
C :
K : #count = 1
K : #minit = 1
K : #CALCULATE:
K : #rlevel(count) = level
C :
C : //////////////////////////// Slice the Part ///////////////////////
C :
K : #SLICE:
K : /co pl lab; axi zx
K : level
K : kn
C :
C : ////////////////////// Estimate Liquid Volume //////////////////////
C :
K : /li pr lab;pt;; su cl okay
K : /li pr lab; pt;; cm li okay
K : #vol_est = z_list(38)
K : #vol_mm(count) = z_list(38)
C :
C : ///////////////////// Compute the Volume Error ////////////////////
C :
K : #vol_err = vol_oil-vol_est
K : #err_mm(count) = vol_err
C :
K : #if (vol_err lt minvol) then,
K :     #minvol = vol_err; #minlevel = level; #minit = count
C :
K : #if (abs(vol_err) le vol_tol) then GOTO REPORTER
C :
C : //////////////////////// Set and Check Counters //////////////////
C :
K : #count = count+1
K : #if (count gt iterations) then goto REPORTER
C :
C : ////////////////////// Delete the cutting plane //////////////////
C :
C : /de lab; fea 
C : inc
C : don
C : y
C : don
C : /up p
AP: 1 8 Change View
AP: 1 1 1 0 0
AP: -0.01547739    -0.2178271      0.2210350
AP:  1.000000       0.0            0.0
AP:  0.0            1.000000       0.0
AP:  0.0            0.0            1.000000
AP:  0.2018349      1.105843       1.105843       14.99997
AP: -1.000000      -1.000000      -1.000000
AP:  1.000000       1.000000       1.000000
K : $ return
K : 
K : $ /de
K : HIS
BP: 1  1       4.96375561E-03   -3.17229033E-02       97841480         0
BR: 1  1       4.96375561E-03   -3.42047215E-02       97841550       256
K : 
K :  BA
K : CANC
K : 
K :
K : 
K : /up p
C :
C : //////////// Determine the Direction of the Step ////////////////
C :
K : #if (vol_err lt 0) then #high = level;#GOTO STEP_DOWN
K : #if (vol_err gt 0) then #low = level;#GOTO STEP_UP
C :
C : //////////////////////// Step Down /////////////////////////////
C :
K : #STEP_DOWN:
K : #step = (level-low)/2
K : #level = level-step
K : #if (level lt low) then #level = low
K : #inc = inc+2
K : #GOTO CALCULATE
C :
C : //////////////////////// Step UP //////////////////////////////
C :
K : #STEP_UP:
K : #step = (high-level)/2
K : #level = level+step
K : #if (level gt high) then #level = high
K : #inc = inc+2
K : #GOTO CALCULATE
C :
C : ///////////////////// Generate a Report /////////////////////////
C :
C : /////////////////Get the original part, overlay and shade/////
C :
K : #REPORTER:
K : #ECHO none
K : /ma 
K : Ge
K : fs 
K : ON
K : F
K : C
K : QG
K : I
K : z_temp
K : Okay
K : ET
K : 2
K : D
K : okay
k : 
K : /mo ap
K : LAB
K : z_temp
K : PT
K : 
K : V
K : Ts
K : on
K : Tr
K : 50
K : Tv1
K : on
K : Okay
K : DON
K : /do so; ; dt shh appl canc
C :
K : #oil = (vol_oil/(1.0e9))*(1057.00)
K : #pfill = (vol_oil/capacity)*100
K : #tolerance = (vol_tol/(1.0e9))*(1057.00)
K : #ptol = (vol_tol/vol_oil)*100
C : 
K : #write report " "
K : #write report "                Volume Analysis Report"
K : #write report "======================================================="
K : #write report " "
K : #write report " cubic mm     quarts     percent"
K : #write report "------------------------------------"
K : #write report  format=" (f10.0,f10.3)" capacity, quart
K : #write report  format=" (f10.0,f10.3,f10.3)" vol_oil, oil, pfill
K : #write report  format=" (f10.0,f10.3,f10.3)" vol_tol, tolerance, ptol
K : #write report " "
K : #write report " "
K : #write report "Iter  Volume(mm^3)   Volume(qt)  Error(mm^3)   Error(qt)   Error(%)   Level"
K : #write report "--------------------------------------------------------------------------------"
K : #write report " "
C :
K : #count = 1
C :
K : #PRINT1:
K : #vol_qt = (vol_mm(count)/(1.0e9))*(1057.00)
K : #err_qt = (err_mm(count)/(1.0e9))*(1057.00)
K : #err_per = (err_mm(count)/vol_oil)*100
C :
K : #write report format=" (f5.0,f12.0,f12.3,f12.0,f12.3,f12.3,f12.3)" count, vol_mm(count), vol_qt, err_mm(count), err_qt, err_per, rlevel(count)
K : #count = count+1
K : #if (count le iterations) then GOTO  PRINT1
K : #close report
K : #execute "jot report.dat    "
C : #execute "/usr/vue/bin/vuepad report.dat    "
c : #execute "more report.dat    "
C :
C : //////////////////////// End the Program ////////////////////////
C :
K : #DONE:
K : /o p p 5; d ad on okay okay
K : /cl
C :
K : #ECHO All
C :
E : ////////// END OF SESSION /////////////
