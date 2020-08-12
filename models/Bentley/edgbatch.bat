@echo off
rem
rem	this is a batch file that will execute EdG against a list of files
rem
rem	******** IMPORTANT *********
rem	in the following FOR statement,
rem	'edg' must be in your PATH
rem	****************************
rem
rem	The easiest method is to set EDGAPP=\dir\subdir\edg.exe
rem
    if not '%EDGAPP%' == '' goto GETBAT
    if '%MS_EDG%' == '' goto FINDEDG
	if not exist %MS_EDG%\edg.exe then goto FINDEDG
	    echo using %MS_EDG%\edg
	    set EDGAPP=%MS_edg%\edg
	    goto GETBAT
:FINDEDG
	echo using simple 'edg'
	set EDGAPP=edg
:GETBAT
    if '%1' == '' goto USAGE
	set BATFILE=%1
	shift
	if '%1' == '' goto USAGE
    :LOOP
    if '%1' == '' goto END
	for %%F in (%1) do  %EDGAPP% %%F @%BATFILE%
	shift
    goto LOOP
rem
rem
:USAGE
    echo %0  batchfile.edg  design-file [...]
:END
    set BATFILE=


