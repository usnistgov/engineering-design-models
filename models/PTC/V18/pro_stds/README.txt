
Initiated 1/20/95 Rev 14.0
UPDATE:
Modified 6/29/95 Rev 15.0
Modified 12/19/95 Rev 16.0, G. Leonard
=============================================================

The following instructions are for standardizing Pro/ENGINEER 
for a typical customer environment.  It is important to note 
this is a guideline which should be reviewed carefully by the 
Pro/ENGINEER system administrator before implementing. 

The standardization is made up of 5 specific areas:

1.	A standard config.pro and menu_def.pro file for common
	environment settings, map keys and menu macros.

2.	Keyboard templates used as a map key guide 
	designed to streamline the user interface.  The templates are
	Pro/ENGINEER drawings which can be plotted or modified.

3.	A standard part, assembly, and sheet metal file which all 
	new models will use as the starting point of the design.

4.	Drawing set up files to be used as a starting point for 
	setting up english or metric drawing standards.

5.	Directory locations for material, drawing format, group(UDF), 
	and symbol directories.

All of these files are in a directory called "pro_stds" which should be
copied to a directory along side the Pro/E loadpoint directory.  For 
example, if Pro/E is loaded at:

			/usr/proe

the pro_stds directory should be loaded at:

			/usr/pro_stds

The Pro/ENGINEER administrator should have complete access to
this directory and all users should have at least "read" 
privaleges.  

=============================================================

	UNIX INSTALLATION OF STANDARD FILES
 
=============================================================


To install the files for use on any UNIX system follow the next
5 steps.  The "proe_loadpoint" is the directory location where the
Pro/ENGINEER software is installed.  In this example, it is /usr/proe:

1.	All required files are in a directory called pro_stds which should be
	copied to a directory along side the Pro/E loadpoint directory.  For
	example, if Pro/E is loaded at:

                        /usr/proe

	the pro_stds directory should be loaded at:

                        /usr/pro_stds 

	If you must put  the pro_stds elsewhere, you must follow 
	the tasks in step 5.

	If the pro_stds directory is placed in this location,
	Pro/ENGINEER will be able to automatically find it
	by using the environment variable PRODIR which is set
	everytime you run Pro.  In config.pro and menu_def.pro
	you will find several paths starting with; $PRODIR/../pro_stds.

	The Pro/ENGINEER administrator should have complete access to
	this directory and all users should have at least "read" 
	privaleges.              
	

2.	Change directory to proe_loadpoint/text

3.	Move the following files if they exist (you may need to 
	login as root):

		mv config.pro   /usr/pro_stds/orig_configs
		mv menu_def.pro /usr/pro_stds/orig_configs

	If Pro/ENGINEER has already been installed, verify neither
	of these files has config settings or menu macros that you 
	want to keep.  If so, you should add them to the config.pro
	and menu_def.pro files in the pro_stds/configs directory.  If
	your settings or macros conflict with those in the pro_stds 
	directory, choose the one you prefer.


4.	Create links 
	from:
		proe_loadpoint/text/config.pro
		proe_loadpoint/text/menu_def.pro 
	to
		/usr/pro_stds/configs/config.pro
		/usr/pro_stds/configs/menu_def.pro

	example:
		if the Pro/E loadpoint is:	/usr/proe
	and 	if the pro_stds directory is:	/usr/pro_stds

	create the links by typing:

   ln -s /usr/pro_stds/configs/config.pro   /usr/proe/text/config.pro
   ln -s /usr/pro_stds/configs/menu_def.pro /usr/proe/text/menu_def.pro

	This will not work if config.pro or menu_def.pro alredy exist
	in the proe_loadpoint/text.  If this is the case, return to step 3.



5.	****************************************************
	This step is NOT REQUIRED if you place your pro_stds
	directory as specified in step 1.
	****************************************************

	Copy the pro_stds directory to the desired location other than 
	the location recommended in step 1.  Assume it is copied to:

			/disk2/admin/pro_stds

	Create a link to a directory called pro_stds which has a full
	path located along side the Pro/E loadpoint directory as described in
	step 1.  In this case, assume the Pro/E loadpoint is:

			/usr/proe

	create the following link:

		ln -s /disk2/admin/pro_stds /usr/pro_stds

	To verify this was done correctly, you should change directory
	to /usr/pro_stds and actually be in /disk2/admin/pro_stds.

=============================================================

PLOTTER SET UP

1.	Determine the type of plotter(s) being used.

2.	Create a plot file in Pro/E.  This can be done in PART mode.
	Specify the correct plotter.  The plot file will be 
	written to the current directory (ex. part.plt)

3.	From a system window, try to send the plot file to the
	plotter by using the plot command specified by your 
	hardware or plotter manual. (ex. lpr part.plt)

4.	When you successfully plot the file, automate the process
	by editting the config.pro file under PLOTTING.
	Example;
		PLOTTER			hp7475a
		PLOTTER_COMMAND		lpr

===============================================================


The implementation data is all stored the pro_stds directory.
Within this directory are subdirectories containing the
following files:


clean 		A utility to clean unnecessary Pro/ENGINEER files from 
		any directory. This can be accessed in Pro/E through
		the UTILITIES menu.

configs		Standard config.pro, menu_def.pro, mapkeys, and drawing
		set up files.

format_dir	A directory to store and retrieve standard drawing
		formats

group_dir	A directory to store and retrieve standard user defined
		features.

material_dir	A directory to store and retrieve common material 
		properties.

orig_configs	A directory to store the original config.pro and 
		menu_def.pro files from the proe_loadpoint/text directory.

start_files	A standard part (regular and sheetmetal) and assembly
		which will be the starting point for all designs.

symbol_dir	A directory to store and retrieve common drawing symbols.

templates	Mapkey templates for various workstation keyboards to
		aid users in learning and using keyboard macros.





