Sat2Vrml Stand Alone Readme

Copyright (C) 2001  Daniel Lapadat

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

See included GPL.txt for the details of the license

Building Sat2Vrml:

1. Set up your ACIS environment varibles
       This information is found in readme.html on the ACIS installation CD.
       Basically the environment varible A3DT and ARCH need to be defined
2. Unzip and untar Sat2Vrml.alone.tar.gz by typing 
       gzip -d Sat2Vrml.alone.tar.gz
       tar -xvf Sat2Vrml.alone.tar
3. type in the following to make the program
   cd standAlone
   ./configure
   make
4. You should get and executable called Sat2Vrml if everything compiled correctly

**Note Sat2Vrml was only tested with ACIS 6.3  you may need to change the libraries in configure.in, then run autoconf and then run the resulting configure script

Using Sat2Vrml:

1. If you just want to use the default refinements just type in
   Sat2Vrml inputfile.sat outputfile.wrl
2. If you would like to use a refinement other than the default
   you need to type in
   Sat2Vrml -ref inputfile.sat outputfile.wrl

   Adjust the refinements.  Look up valid values for the refinement
   attributes in the ACIS Online Help under REFINEMENT

Please Report bugs to DanL@drexel.edu
