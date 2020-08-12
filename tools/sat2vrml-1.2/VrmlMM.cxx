/* 
   This code may be freely distributed as long as it contains the
	following copyright notices.

   This program is derived off of work done by 
        (c) Gordon Little 1996 and (c) Stephen Spitz 1996

   Copyright (C) 2002 Daniel Lapadat (DanL@drexel.edu)

   Modified by Daniel Lapadat (DanL@drexel.edu)
   Modifications: -Changed from Vrml 1.0 to Vrml 2.0 and general bug fixes
                  -Got rid of output to stdout
		  -Added random colors for each entity
		  -(6/15/2001) Made two ways to insert the appearance, 
		  one is hard coded the other uses DEF which is not
		  implemented in some vrml loaders yet
		  -(6/15/2001) Users can insert bounding cube into
		  the VRML scene if they wish
		  -(6/15/2001) Multiple Viewpoints added
		  -(6/15/2001) Scenes default in Study mode and 
		  the headlight is on by default

   VrmlMM.cxx creates a mesh manager to convert SAT files to VRML 2.0 files
   Copyright (C) 2002 Daniel Lapadat (DanL@drexel.edu)

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*/

#include <time.h>
#include <stdio.h>
#include <stdlib.h>

#include "kernel/acis.hxx"

#include "faceter/acisintf/af_types.h"
#include "faceter/api/af_api.hxx"

#include "baseutil/vector/vector.hxx"
#include "baseutil/vector/position.hxx"
#include "baseutil/vector/param.hxx"

#include "VrmlMM.hxx"

VRML_MESH_MANAGER::VRML_MESH_MANAGER() {
  outfile = stdout;
  startedCoordIndex = FALSE;
  pointStarted = FALSE;
  testCube = FALSE;
  hardCodeColors = TRUE;
  viewPoints = TRUE;
  srand(time(NULL));//used for random color generation
}

void VRML_MESH_MANAGER::set_output_file( FILE *fp ) {
    outfile = fp;
    startedCoordIndex = FALSE;
    pointStarted = FALSE;
}

logical VRML_MESH_MANAGER::need_global_indexed_polygons() {
  return TRUE;
}

void VRML_MESH_MANAGER::begin_global_mesh_output( ENTITY *)
{
  fprintf( outfile, "\t\tShape {\n");
  fprintf( outfile, "\t\t\tgeometry IndexedFaceSet {\n");
  fprintf( outfile, "\t\t\t\tcoord Coordinate {\n");
  fprintf( outfile, "\t\t\t\t\tpoint [\n");
  pointStarted = TRUE;
  startedCoordIndex = FALSE;
}

void VRML_MESH_MANAGER::start_indexed_polygon( int ipoly, int npolynode) {
  //don't write to stdout
}

void VRML_MESH_MANAGER::start_indexed_polygon( int ipoly, int npolynode, int ishare ) {
  //don't write to stdout
}

void* VRML_MESH_MANAGER::null_node_id() {
  return (void *) -1;
}

void* VRML_MESH_MANAGER::announce_global_node( int inode, VERTEX *, const position &X) {
  return addnode( inode, X);
}

void* VRML_MESH_MANAGER::announce_global_node( int inode, EDGE *, const position &X, double t) {
  return addnode( inode, X);
}

void* VRML_MESH_MANAGER::announce_global_node( int inode, FACE *, const position &X, const par_pos &uv) {
  return addnode( inode, X);
}

void VRML_MESH_MANAGER::announce_counts( int npoly, int nnode, int npolynode ) {
  //don't output anything to stdout
}

void VRML_MESH_MANAGER::announce_indexed_polynode( int, int, void *idptr) {
  //make sure we closed the point
  if ( !startedCoordIndex ) {
    fprintf( outfile, "\t\t\t\t\t] #end of point\n");
    fprintf( outfile, "\t\t\t\t} #end of Coordinate\n");
    fprintf( outfile, "\t\t\t\tcoordIndex [\n\t\t\t\t\t");
    startedCoordIndex = TRUE;
    pointStarted = FALSE;
  }

  fprintf( outfile, "%d, ", (int) idptr);
}

void VRML_MESH_MANAGER:: announce_indexed_polynode ( ENTITY* a, int e, int i, void* o )
{
  //don't write to stdout
}
void VRML_MESH_MANAGER:: announce_indexed_polynode ( ENTITY* E, int poly, int i, 
						     void* id, 
						     const double& edge_tpar,
						     const par_pos& uv,
						     const position& X, 
						     const unit_vector& N )
{
  //don't write to stdout
}

void VRML_MESH_MANAGER::end_indexed_polygon( int)
{
  fprintf( outfile, "-1,\n\t\t\t\t\t");
}

void VRML_MESH_MANAGER::end_global_mesh_output( ENTITY *) {
  if (pointStarted) {
    fprintf( outfile, "\t\t\t\t\t\t0 0 0, #IGNORE\n");
    fprintf( outfile, "\t\t\t\t\t] #end of point\n");
    fprintf( outfile, "\t\t\t\t} #end of Coordinate\n");
    fprintf( outfile, "\t\t\t} #end of geometry\n");
    fprintf( outfile, "\t\t} #end of Shape\n");
    pointStarted = FALSE;
  }
  
  if(startedCoordIndex) {
    fprintf( outfile, "\n\t\t\t\t] #end of coordIndex\n");
    fprintf( outfile, "\t\t\t} #end of geometry\n");
    color();
    fprintf( outfile, "\t\t} #end of Shape\n");
    startedCoordIndex = FALSE;
  }
}

void* VRML_MESH_MANAGER::addnode( int inode, const position &pos) {
  fprintf( outfile, "\t\t\t\t\t\t%f %f %f,\n", pos.x(), pos.y(), pos.z());
  return (void *) inode;
}

void VRML_MESH_MANAGER::viewCube( int value ) {
  testCube = value;
}

void VRML_MESH_MANAGER::hardColors( int value ) {
  hardCodeColors = value;
}

void VRML_MESH_MANAGER::lotsViewPoints( int value ) {
  viewPoints = value;
}

void VRML_MESH_MANAGER::color() {
  if( hardCodeColors == 1 ) {
    randColor();
  }
  else {
    randColor( _color );
    fprintf( outfile, "\t\t\tappearance USE %s\n", _color );
  }
}

void VRML_MESH_MANAGER::randColor() {
  //you need to seed this function before faceting
  int num = rand()%24 + 1;

  fprintf( outfile, "\t\t\tappearance Appearance {\n");
  fprintf( outfile, "\t\t\t\tmaterial Material {\n");

  switch( num ) {
  case 1: //red
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1.0 0.0 0.0\n");
    break;
  case 2: //green
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.0 1.0 0.0\n");
    break;
  case 3: //blue
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.0 0.0 1.0\n");
    break;
  case 4: //yellow
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1.0 1.0 0.0\n");
    break;
  case 5: //megenta
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1.0 0.0 1.0\n");
    break;
  case 6: //cyan
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.0 1.0 1.0\n");
    break;
  case 7: //goldenrod
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1.0 0.5 0.0\n");
    break;
  case 8: //fuchsia
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1.0 0.0 0.5\n");
    break;
  case 9: //darksalmon
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1.0 0.5 0.5\n");
    break;
  case 10: //lime
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.5 1.0 0.0\n");
    break;
  case 11: //darkturquoise
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.0 1.0 0.5\n");
    break;
  case 12: //darkseagreen
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.5 1.0 0.5\n");
    break;
  case 13: //purple
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.5 0.0 1.0\n");
    break;
  case 14: //deepskyblue
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.0 0.5 1.0\n");
    break;
  case 15: //blueviolet
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.5 0.5 1.0\n");
    break;
  case 16: //firebrick
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.5 0.0 0.0\n");
    break;
  case 17: //forestgreen
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.0 0.5 0.0\n");
    break;
  case 18: //darkslateblue
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.0 0.0 0.5\n");
    break;
  case 19: //olive
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.5 0.5 0.0\n");
    break;
  case 20: //orchid
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.5 0.0 0.5\n");
    break;
  case 21: //turquoise
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.0 0.5 0.5\n");
    break;
  case 22: //beige
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.9 0.8 0.5\n");
    break;
  case 23: //white
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1.0 1.0 1.0\n");
    break; 
  default: //lightgray
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0.7 0.7 0.7\n");
    break;
  }

  fprintf( outfile, "\t\t\t\t\temissiveColor 0.05 0.05 0.05\n");
  fprintf( outfile, "\t\t\t\t\tspecularColor 1.0 1.0 1.0\n");
  fprintf( outfile, "\t\t\t\t\tambientIntensity 0.2\n");
  fprintf( outfile, "\t\t\t\t\tshininess 0.2\n");
  fprintf( outfile, "\t\t\t\t\ttransparency 0.0\n");
  fprintf( outfile, "\t\t\t\t} #end of material\n");
  fprintf( outfile, "\t\t\t} #end of appearance\n");
}

void VRML_MESH_MANAGER::randColor( char* color ) {
  //you need to seed this function before faceting
  int num = rand()%24 + 1;
  
  switch( num ) {
  case 1: strcpy( color, "red\0"); break;
  case 2: strcpy( color, "green\0"); break;
  case 3: strcpy( color, "blue\0"); break;
  case 4: strcpy( color, "yellow\0"); break;
  case 5: strcpy( color, "magenta\0"); break;
  case 6: strcpy( color, "cyan\0"); break;
  case 7: strcpy( color, "goldenrod\0"); break;
  case 8: strcpy( color, "fuchsia\0"); break;
  case 9: strcpy( color, "darksalmon\0"); break;
  case 10: strcpy( color, "lime\0"); break;
  case 11: strcpy( color, "darkturquoise\0"); break;
  case 12: strcpy( color, "darkseagreen\0"); break;
  case 13: strcpy( color, "purple\0"); break;
  case 14: strcpy( color, "deepskyblue\0"); break;
  case 15: strcpy( color, "blueviolet\0"); break;
  case 16: strcpy( color, "firebrick\0"); break;
  case 17: strcpy( color, "forestgreen\0"); break;
  case 18: strcpy( color, "darkslateblue\0"); break;
  case 19: strcpy( color, "olive\0"); break;
  case 20: strcpy( color, "orchid\0"); break;
  case 21: strcpy( color, "turquoise\0"); break;
  case 22: strcpy( color, "beige\0"); break;
  case 23: strcpy( color, "white\0"); break;
  case 24: default: strcpy( color, "lightgray\0"); break;
  }
}

void VRML_MESH_MANAGER::header() {
  fprintf( outfile, "#VRML V2.0 utf8\n");
  fprintf( outfile, "WorldInfo {\n");
  fprintf( outfile, "\tinfo [\n");
  fprintf( outfile, "\t\t\"This file was created by the GICL Sat2Vrml program\",\n");
  fprintf( outfile, "\t\t\"http://gicl.mcs.drexel.edu/\",\n");
  fprintf( outfile, "\t\t\"Drexel University\",\n");
  fprintf( outfile, "\t\t\"Released under the GNU GPL\",\n");
  fprintf( outfile, "\t\t\"Copyright (C) 2001 Daniel Lapadat\"\n");
  fprintf( outfile, "\t]\n");
  fprintf( outfile, "\ttitle \"GICL Sat2Vrml\"\n");
  fprintf( outfile, "}\n");

  insertViews();

  /* Don't need because Headlight is on by default
  fprintf( outfile, "DirectionalLight {\n");
  fprintf( outfile, "\tambientIntensity 0\n");
  fprintf( outfile, "\tcolor 1 1 1\n");
  fprintf( outfile, "\tdirection -1 -1 -1\n");
  fprintf( outfile, "\tintensity 1\n");
  fprintf( outfile, "\ton TRUE\n");
  fprintf( outfile, "}\n");
  */

  fprintf( outfile, "NavigationInfo {\n");
  fprintf( outfile, "\tavatarSize [0.25, 1.6, 0.75]\n");
  fprintf( outfile, "\theadlight TRUE\n");
  fprintf( outfile, "\tspeed 1.0\n");
  fprintf( outfile, "\ttype [\"EXAMINE\", \"ANY\"]\n");
  fprintf( outfile, "\tvisibilityLimit 0.0\n");
  fprintf( outfile, "}\n");

  insertCube();

  fprintf( outfile, "Transform {\n");
  fprintf( outfile, "\tchildren [\n");

  insertDEFS();
}

void VRML_MESH_MANAGER::footer() {
  if (pointStarted) {
    fprintf( outfile, "\t\t\t\t\t] #end of point\n");
    fprintf( outfile, "\t\t\t\t} #end of Coordinate\n");
    fprintf( outfile, "\t\t\t} #end of geometry\n");
    fprintf( outfile, "\t\t} #end of Shape\n");
    pointStarted = FALSE;
  }
  
  if(startedCoordIndex) {
    fprintf( outfile, "\n\t\t\t\t] #end of coordIndex\n");
    fprintf( outfile, "\t\t\t} #end of geometry\n");
    color();
    fprintf( outfile, "\t\t} #end of Shape\n");
  }

  fprintf( outfile, "\t] #end of children\n");
  fprintf( outfile, "}\n");
  startedCoordIndex = FALSE;
}

void VRML_MESH_MANAGER::flush_file() {
  fflush( outfile);
}

void VRML_MESH_MANAGER::insertViews() {
  fprintf( outfile, "Viewpoint {\n");
  fprintf( outfile, "\tfieldOfView 0.785398\n");
  fprintf( outfile, "\tposition 50 50 300\n");
  fprintf( outfile, "\torientation 0 0 1 0\n");
  fprintf( outfile, "\tdescription \"Front\"\n");
  fprintf( outfile, "\tjump TRUE\n");
  fprintf( outfile, "}\n");
  
  if( viewPoints == 1 ) {
    fprintf( outfile, "Viewpoint {\n");
    fprintf( outfile, "\tfieldOfView 0.785398\n");
    fprintf( outfile, "\tposition 50 50 -200\n");
    fprintf( outfile, "\torientation 1 0 0 3.141593\n");
    fprintf( outfile, "\tdescription \"Back\"\n");
    fprintf( outfile, "\tjump TRUE\n");
    fprintf( outfile, "}\n");

    fprintf( outfile, "Viewpoint {\n");
    fprintf( outfile, "\tfieldOfView 0.785398\n");
    fprintf( outfile, "\tposition 300 50 50\n");
    fprintf( outfile, "\torientation 0 1 0 1.570796\n");
    fprintf( outfile, "\tdescription \"Right Side\"\n");
    fprintf( outfile, "\tjump TRUE\n");
    fprintf( outfile, "}\n");

    fprintf( outfile, "Viewpoint {\n");
    fprintf( outfile, "\tfieldOfView 0.785398\n");
    fprintf( outfile, "\tposition -200 50 50\n");
    fprintf( outfile, "\torientation 0 1 0 -1.570796\n");
    fprintf( outfile, "\tdescription \"Left Side\"\n");
    fprintf( outfile, "\tjump TRUE\n");
    fprintf( outfile, "}\n");

    fprintf( outfile, "Viewpoint {\n");
    fprintf( outfile, "\tfieldOfView 0.785398\n");
    fprintf( outfile, "\tposition 50 300 50\n");
    fprintf( outfile, "\torientation 1 0 0 -1.570796\n");
    fprintf( outfile, "\tdescription \"Top\"\n");
    fprintf( outfile, "\tjump TRUE\n");
    fprintf( outfile, "}\n");

    fprintf( outfile, "Viewpoint {\n");
    fprintf( outfile, "\tfieldOfView 0.785398\n");
    fprintf( outfile, "\tposition 50 -200 50\n");
    fprintf( outfile, "\torientation 1 0 0 1.570796\n");
    fprintf( outfile, "\tdescription \"Bottom\"\n");
    fprintf( outfile, "\tjump TRUE\n");
    fprintf( outfile, "}\n");

    fprintf( outfile, "Viewpoint {\n");
    fprintf( outfile, "\tfieldOfView 0.785398\n");
    fprintf( outfile, "\tposition 200 200 200\n");
    fprintf( outfile, "\torientation 1 -1 0 -1.047198\n");
    fprintf( outfile, "\tdescription \"Diagonal Top\"\n");
    fprintf( outfile, "\tjump TRUE\n");
    fprintf( outfile, "}\n");

    fprintf( outfile, "Viewpoint {\n");
    fprintf( outfile, "\tfieldOfView 0.785398\n");
    fprintf( outfile, "\tposition -100 -100 -100\n");
    fprintf( outfile, "\torientation 1 -1 0 2.094395\n");
    fprintf( outfile, "\tdescription \"Diagonal Bottom\"\n");
    fprintf( outfile, "\tjump TRUE\n");
    fprintf( outfile, "}\n");
  }
}

void VRML_MESH_MANAGER::insertCube() {
  if( testCube == 1 ) {
    //bounding cube
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 50 0 0\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 100 2 2 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 50 100 0\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 100 2 2 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 50 0 100\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 100 2 2 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 50 100 100\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 100 2 2 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 0 0 50\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 2 2 100 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 0 100 50\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 2 2 100 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 100 100 50\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 2 2 100 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 100 0 50\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 2 2 100 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 0 50 0\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 2 100 2 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 100 50 0\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 2 100 2 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 0 50 100\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 2 100 2 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 100 50 100\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 2 100 2 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 0 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");

    fprintf( outfile, "\n#Boxes\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 100 100 100\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 5 5 5 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 100 100 0\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 5 5 5 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 100 0 100\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 5 5 5 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 0 100 100\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 5 5 5 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 100 0 0\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 5 5 5 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 0 100 0\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 5 5 5 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 0 0 100\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 5 5 5 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    fprintf( outfile, "Transform {\n");
    fprintf( outfile, "\ttranslation 0 0 0\n");
    fprintf( outfile, "\tchildren [\n");
    fprintf( outfile, "\t\tShape {\n");
    fprintf( outfile, "\t\t\tgeometry Box { size 5 5 5 }\n");
    fprintf( outfile, "\t\t\tappearance Appearance {\n");
    fprintf( outfile, "\t\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\t\tdiffuseColor 1 1 0\n");
    fprintf( outfile, "\t\t\t\t}\n");
    fprintf( outfile, "\t\t\t}\n");
    fprintf( outfile, "\t\t}\n");
    fprintf( outfile, "\t]\n");
    fprintf( outfile, "}\n");
    //end bounding cube
  }
}

void VRML_MESH_MANAGER::insertDEFS() {
  if( hardCodeColors != 1 ) {
    fprintf( outfile, "\t\tDEF red Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 1.0 0.0 0.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF green Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.0 1.0 0.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF blue Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.0 0.0 1.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF yellow Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 1.0 1.0 0.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF magenta Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 1.0 0.0 1.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF cyan Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF goldenrod Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 1.0 0.5 0.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF fuchsia Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 1.0 0.0 0.5\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF darksalmon Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 1.0 0.5 0.5\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF lime Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.5 1.0 0.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF darkturquoise Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.0 1.0 0.5\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF darkseagreen Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.5 1.0 0.5\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF purple Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.5 0.0 1.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF deepskyblue Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.0 0.5 1.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF blueviolet Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.5 0.5 1.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF firebrick Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.5 0.0 0.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF forestgreen Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.0 0.5 0.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF darkslateblue Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.0 0.0 0.5\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF olive Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.5 0.5 0.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF orchid Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.5 0.0 0.5\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF turquoise Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.0 0.5 0.5\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF lightgray Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.7 0.7 0.7\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF white  Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
    
    fprintf( outfile, "\t\tDEF beige Appearance {\n");
    fprintf( outfile, "\t\t\tmaterial Material {\n");
    fprintf( outfile, "\t\t\t\tdiffuseColor 0.9 0.8 0.5\n");
    fprintf( outfile, "\t\t\t\temissiveColor 0.05 0.05 0.05\n");
    fprintf( outfile, "\t\t\t\tspecularColor 1.0 1.0 1.0\n");
    fprintf( outfile, "\t\t\t\tambientIntensity 0.2\n");
    fprintf( outfile, "\t\t\t\tshininess 0.2\n");
    fprintf( outfile, "\t\t\t\ttransparency 0.0\n");
    fprintf( outfile, "\t\t\t} #end of material\n");
    fprintf( outfile, "\t\t} #end of appearance\n");
  }
}
