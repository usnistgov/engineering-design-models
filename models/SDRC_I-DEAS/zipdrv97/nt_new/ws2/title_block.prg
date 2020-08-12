C : title_block.prg - Annotates Drafting Setup title blocks - title, dwg #, drawn, date
C : title_block.prg - Richard Dickerson/Mark Lukens/Chris Regg/SDRC/San Diego
C : title_block.prg - Version 1.0/22-May-1996
C :
C : Variables used
C : username  - name of person running I-DEAS
C : mfname    - name of model file being run
C : wid       - width of drafting setup 
C : hgt       - height of drafting setup
C : dwgnumber - the number (if any) associated with the current drafting setup
C : dsize     - size of layout
C : date      - today's date (or the date your computer thinks it is)
C : ds        - index code for drawing size
C : dt        - index code for drawing type
C : dwgname   - name of drafting setup.  Must be defined or program will not run
C : count     - looping variable
C : revletter - drafting setup revision number/letter
C : str       - temporary string variable
C : txt       - text array
C : xoff      - array of text locations (x-direction) relative to drawing (0.0,0.0)
C : yoff      - array of text locations (y-direction) relative to drawing (0.0,0.0)
C : xc        - array of text offset locations in x-direction relative to xoff
C : yc        - array of text offset locations in y-direction relative to yoff
C : ts        - array of text sizes
C : wr        - array of text width ratios
C : 
C : 
C : Tested with SDRC Drafting Setup drawing formats only.
C : The Drafting Setup needs a name (part numbers are optional).
C : The Drafting Setup name must be unique in the model file.
C : Works only with ANSI and ISO setups
C : Model file units must be 'mm' for iso drawings & 'in' for ansi drawings.
C : The model file needs to have been saved.
C : Drafting Setup names must be shorter than 50 characters.  For names longer
C :         than 23 characters, you must adjust the text width parameter (wr).
C : Drafting Setup part numbers must be shorter than 40 characters.  For part
C :     numbers longer than 13 characters you must adjust the parameter (wr).
C : 
K :                                                         cl ; #echo none
C :
K : #output "Title Block Program Running..."
C : Switch to Drafting Setup Task
K : /ta d
C : Check to see if in simulation, or if Drafting Setup not available
C : #on_error GOTO FINISH
C : #on_error pause
C :
C : Use Report Writer to write an O.S. file that contains the user's name and
C : the model file name that the user is running.
C :
K : /MA IT RE F NF Y P TI APPEND
K : |%U?%N
K : 
K : DONE
K :  TA L LM 0
K : OKAY
K : OKAY
K :  P PT YES
K :  FTO NO
K :  PC cat > zzzz_mf_user.dat
K : OKAY
K : canc
K : canc
K : 
C : Do surgery on the file to get just the user name and mf name in separate files
K : #execute "cat zzzz_mf_user.dat | cut -f2 -d'|' | cut -f1 -d'?' > zzzz_user.dat"
K : #execute "cat zzzz_mf_user.dat | cut -f2 -d'|' | cut -f2 -d'?' > zzzz_mf.dat"
C : 
K : #open z_temp "zzzz_user.dat"
K : #read z_temp username
K : #close z_temp
C : #output "username = "username
C : 
K : #open z_temp "zzzz_mf.dat"
K : #read z_temp mfname
K : #close z_temp
C : #output "mfname = "mfname
K : #execute "rm zzzz_mf.dat zzzz_user.dat zzzz_mf_user.dat"
C : Check to see if mfname is null.  If so, the program cannot continue.
K : #if (mfname eq "") then #output "*** Model file not saved ***" ; #goto THEEND
C :
C : List the size of active drafting setup
C :
K : /li v n 32
K :
C : If no setup is active then quit
K : #on_error goto THEEND
C : Capture the height and width from the z list
K : #wid=z_list(2) ; #hgt=z_list(1)
C :
C : Determine drawing name - output drafting setup layout info to a file.
C :
K : #echo all
K : /f pr c fil 
K : z_file.dat
K : 
C : Turn on the output list
K : l on
K : okay
C : List the drafting setup layout
K : /li l
C : End the program file
K : /f pr e
K : 
K :                                                       cl ; #echo none
C :
C : Remove the 1st 2 lines of the file.  On the new 1st line, the drawing name
C : is after the second ":" (i.e., in field 3).  Redirect to the same file.
K : #execute "cat z_file.dat | sed '1,2d' | head -1 | cut -f3 -d':' > z_file.dat"
K : #open uname "z_file.dat"
C : Read the drawing name into the I-DEAS programmability variable 'dwgname'
K : #read uname dwgname
K : #close uname
C :
C : Clean-up z_file.dat from data management
C : 
K : /MA IT
K :  SC C
K : OKAY
K : /MA IT
K :  FLT
K :  QG I z_file
K :  ! QG T
K :  SU
K :  ML
K :  HI
K :  TA 19;
K :  MR
K :  P
K : OKAY
K :  IS 1;
K :  ACT D
K : Y
K : OKAY
K : 
C : 
C : End data management clear routine
C :
C : Check to see if dwgname is null.  If so, the drafting setup has no name
C : or there is no drafting setup active.
K : #if (dwgname eq "") then #output "No Drawing name found" ; #goto THEEND
C : #output "dwgname = "dwgname
C :
C : Check size of active drafting setup
C :                              Drawing size legend
C :                                      DS(#)
C :              DT(TYPE) |    1      2     3      4     5     6    
C :             --------------------------------------------------
C :                ISO    |  A4H    A4V    A3     A2    A1    A0
C :                ANSI   |   AH     AV     B      C     D     E
C :
C : 56789 123456789 123456789 123456789 123456789 123456789 123456789 123456789]123456 C80
K : #if (hgt eq 210 and wid eq 297)  then #dsize="A4H" ; #DS=1 ; #DT="ISO"  ; #goto SIZE
K : #if (hgt eq 297 and wid eq 210)  then #dsize="A4V" ; #DS=2 ; #DT="ISO"  ; #goto SIZE
K : #if (hgt eq 297 and wid eq 420)  then #dsize="A3"  ; #DS=3 ; #DT="ISO"  ; #goto SIZE
K : #if (hgt eq 420 and wid eq 594)  then #dsize="A2"  ; #DS=4 ; #DT="ISO"  ; #goto SIZE
K : #if (hgt eq 594 and wid eq 841)  then #dsize="A1"  ; #DS=5 ; #DT="ISO"  ; #goto SIZE
K : #if (hgt eq 841 and wid eq 1189) then #dsize="A0"  ; #DS=6 ; #DT="ISO"  ; #goto SIZE
C : 
K : #if (hgt eq 8.5 and wid eq 11)   then #dsize="AH"  ; #DS=1 ; #DT="ANSI" ; #goto SIZE
K : #if (hgt eq 11  and wid eq 8.5)  then #dsize="AV"  ; #DS=2 ; #DT="ANSI" ; #goto SIZE
K : #if (hgt eq 11  and wid eq 17)   then #dsize="B"   ; #DS=3 ; #DT="ANSI" ; #goto SIZE
K : #if (hgt eq 17  and wid eq 22)   then #dsize="C"   ; #DS=4 ; #DT="ANSI" ; #goto SIZE
K : #if (hgt eq 22  and wid eq 34)   then #dsize="D"   ; #DS=5 ; #DT="ANSI" ; #goto SIZE
K : #if (hgt eq 34  and wid eq 44)   then #dsize="E"   ; #DS=6 ; #DT="ANSI" ; #goto SIZE
K : #output "Non supported setup size used" ; #goto THEEND
K : #SIZE:
C :
C : In manage items, set the "CONTEXT" to the model file name.  Set the
C : "SELECTED TYPES" to "DRAFTING SETUP".  Use Report Writer to to determine 
C : which drafting setup part number goes with the setup part name
C :
C : Create a string variable with the MANAGE ITEMS mnemonics and append to it
C : the model file name string
C :
K : #str="/MA IT SC C FLT QG I "+mfname
C : Define global symbol which is the commands of the str variable
K : /o gl del mfn;;/o gl en mfn;str
K : 
C : Run the global symbol
K : mfn
K :  ! QG T
K :  SU 
K :  ML
K :  HI
K :  TA 3;
K :  MR
K :  P
K : OKAY
K :  IS 1;
K :  SC SI
K : OKAY
K : 
C : Set the 'filter name' to the drafting setup name and
C : Set the 'filter types' to look at only drafting setups
C :
C : Define global symbol to put setup name in form.  Use report writer to
C : write a file that contains the drafting setup number and rev.
C : 
K : #str="/MA IT FLT QG I "+dwgname
K : /o gl del dwgn;;/o gl en dwgn;str
K : 
C : End global symbol definition.  Run global symbol.
K : dwgn
K :  ! QG T
K :  HI
K :  TA DC 3;
K :  TA 4;
K :  P
K : OKAY
K :  RE
K :  F
K :  NF
K : Y
K :  AS
K :  A DC 1;
K :  A 4;
K : OKAY
C : Set the drafting setup part number field width to 40 characters
K :  W 40
K :  'ADD'
K :  AS
K :  A DC 6;
C : Set the drafting setup revision field width to 20 characters
K :  W 20
K :  'ADD'
K : OKAY
K :  P PT YES
K :  FTO NO
K :  PC cat > zzzz_info.dat
K : OKAY
K : CANC
K : CANC
K :
K : #execute "cat zzzz_info.dat | sed '1,2d' | cut -c1-41  > zzzz_dwg.dat"
K : #execute "cat zzzz_info.dat | sed '1,2d' | cut -c42-60 > zzzz_rev.dat"
K : #open z_temp "zzzz_dwg.dat"
K : #read z_temp dwgnumber
K : #close z_temp
C :
K : #open z_temp "zzzz_rev.dat"
K : #read z_temp revletter
K : #close z_temp
K : #execute "rm zzzz_info.dat zzzz_dwg.dat zzzz_rev.dat RWprintTmp_*"
C :
C : Put today's date in the I-DEAS programmability variable 'date'
K : #execute 'date +%m/%d/%y > zzzz_date.dat'
K : #open uname "zzzz_date.dat"
K : #read uname date
K : #close uname
K : #execute "rm zzzz_date.dat"
K : cl
C :
K : #output "username         = "username
K : #output "mfname           = "mfname
K : #output "drawing size     = "dsize", "hgt "x" wid"
K : #output "drawing name     = "dwgname
K : #output "drawing number   = "dwgnumber
K : #output "drawing revision = "revletter
K : #output "date             = "date
K : #output "drawing type     = "dt
C : #output "drawing size code= "ds
C :
C :
C : 5678901234567890123456789012345678901234567890123456789012345678901234567890
C :
C : Set coordinates and offsets for text placement.  
C : txt() = text variable; 1=dwgname; 2=dwgnumber; 3=username; 4=date
C : xoff()/yoff() are the location of the lower right hand corner of the title block
C : xoff()= text location x-direction relative to drawing (0.0,0.0)
C : yoff()= text location y-direction relative to drawing (0.0,0.0)
C : xc()  = text location center offset in x-direction relative to xoff()
C : yc()  = text location center offset in y-direction relative to yoff()
C : ts()  = text size
C : wr()  = text width ratio; if you want more characters to fit make smaller
C :
K : #declare txt(6)
K : #declare xoff(6), yoff(6), xc(4), yc(4), ts(4), wr(4)
C :
K : #if (dt eq "ANSI") then #goto JUMP1
C :
C :  ISO values
C :
K : #xoff(1)= 287; #xoff(2)= 200; #xoff(3)= 410
K : #xoff(4)= 584; #xoff(5)= 821; #xoff(6)=1169
C :
K : #yoff(1)=10;   #yoff(2)=10;   #yoff(3)=10
K : #yoff(4)=10;   #yoff(5)=20;   #yoff(6)=20
C : 
K : #xc(1)= -42;   #xc(2)= -26;   #xc(3)= -111;    #xc(4)=-91
K : #yc(1)=  19;   #yc(2)=   8;   #yc(3)=   17;    #yc(4)= 17
C : 
K : #ts(1)=    4;   #ts(2)=    4;   #ts(3)=     2;    #ts(4)=   2
K : #wr(1)=   .9;   #wr(2)=   .9;   #wr(3)=    .6;    #wr(4)=  .6
C :
K : #goto JUMP2
C :
K : #JUMP1:
C :
C : ANSI values
C :
K : #xoff(1)= 10.75; #xoff(2)=  8.12; #xoff(3)= 16.38
K : #xoff(4)= 21.50; #xoff(5)= 33.00; #xoff(6)= 43.50
C :
K : #yoff(1)= .38;   #yoff(2)= .25;   #yoff(3)= .38
K : #yoff(4)= .75;   #yoff(5)= .50;   #yoff(6)=1.00
C : 
K : #xc(1)= -2.13;   #xc(2)= -1.31;   #xc(3)= -5.56;    #xc(4)=-4.56
K : #yc(1)=   .89;   #yc(2)=   .39;   #yc(3)=   .83;    #yc(4)=  .83
K : #ts(1)=   .19;   #ts(2)=   .19;   #ts(3)=   .12;    #ts(4)=  .12
K : #wr(1)=    .9;   #wr(2)=    .9;   #wr(3)=    .6;    #wr(4)=   .6
C :
C : Exceptions
C : Title block changes for D and E formats
C :
K : #if (ds lt 5) then #goto SKIP1
C :
K : #xc(1)= -2.56;   #xc(2)= -1.75;   #xc(3)= -6.81;    #xc(4)=-5.55
K : #yc(1)=  1.23;   #yc(2)=   .43;   #yc(3)=  1.26;    #yc(4)= 1.26
K : #ts(1)=   .25;   #ts(2)=   .25;   #ts(3)=   .16;    #ts(4)=  .16
C :
K : #SKIP1:
C : 
C : Done with main title block area coordinate data
C :
K : #JUMP2:
C :
K : #txt(1)=dwgname ; #txt(2)=dwgnumber ; #txt(3)=username ; #txt(4)=date
K : 
C :
C : Loop thru the text placement routine 4 times.  Place the appropriate text
C : at the appropriate size.
C :
K : #COUNT=0
K : #LOOP1:
K : #COUNT=COUNT+1
C : 
K : #if (txt(count) eq "") then #goto LOOP1
C : Define a string variable that has the text placement mnemonic in it.
K : #str="/det n l of a 0 txt append "+txt(COUNT)
C : Define the global symbol
K : /o gl del dn;;/o gl en dn;str
K : 
C : Activate drawing view
K : /ac n 32
C : Run the global symbol 'dn'
K : dn
K :
K : done
K : okay
C : Set the text size (ts)
K : a tv nh ts(COUNT)
C : Set the width ratio (wr)
K : w wr(COUNT)
K : okay
K : okay
C : Get into keyboard mode to place text
K : K
C : Key-in the approipriate text location
K : xoff(ds)+xc(COUNT), yoff(ds)+yc(COUNT)
K : okay
K : 
K : #IF (COUNT LT 4) THEN #GOTO LOOP1
K : 
K : #output "Finished Title Block Program"
C :
K : #THEEND:
C : Clean up variables
K : #delete date, dsize, ds, dt, dwgname, dwgnumber, hgt, count
K : #delete mfname, revletter, str, uname, username, wid
K : #delete txt, xoff, yoff, xc, yc, ts, wr
C :
K : #FINISH:
K : #echo all
E : 
