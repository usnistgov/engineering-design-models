C :              DISCLAIMER OF WARRANTY
C :
C :  ALL INFORMATION CONTAINED IN THE ULIB DIRECTORY IS BEING PROVIDED
C :  TO LICENSEE ON AN 'AS IS' BASIS WITHOUT WARRANTIES OF ANY KIND WHETHER
C :  EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO, THE
C :  WARRANTY OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
C :
C : SDRC MS1 Design PROGRAM FILE
C : set_def_tol.prg -09-DEC-1993/TGPerry/SDRC
C :
C : ****************************************************************
C : *****                COPYRIGHT  (C)  1993                  *****
C : *****        BY STRUCTURAL DYNAMICS RESEARCH CORP.         *****
C : *****                 ALL RIGHTS RESERVED                  *****
C : ****************************************************************
C :
C : DESCRIPTION: Program to Set default tolerances.
C :
C : --------------------------------------------------------------------------
C :
K : #echo none
C : Turn form display off
K : /o pr pr 2;; fd of o o;; /
C :
C : Set tolerance defaults
K : #echo all / ta t st d
? :
K : #echo none
C :
C : Dimension Defaults
C :
K : horizontal_dim    0 0
K : vertical_dim      0 0
K : linear_dim        .01 .01
K : angular_dim       .01 .01
K : radial_dim        .01 .01
C :
C : Tolerance Zones
C :
K : perpendicular     0
K : parallel          0
K : coincident        0
K : collinear         0
K : anchor            0
K : horizontal_ground 0
K : vertical_ground   0
K : fix_angle         0
K : equation          0
K : ok
C :
C : Turn form display on
K : /o pr p 2;; fd on o o;; /
C : Display set tolerances
K : #echo all /st d
? :
E : **** END OF SESSION ****
