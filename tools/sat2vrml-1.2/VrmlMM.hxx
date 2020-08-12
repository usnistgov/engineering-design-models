
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

   VrmlMM.hxx creates a mesh manager to convert SAT files to VRML 2.0 files
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

#ifndef VRMLMMG_HXX
#define VRMLMMG_HXX

class ENTITY;
class FACE;
class EDGE;
class VERTEX;

class position;
class par_pos;
class unit_vector;

#include "baseutil/logical.h"
#include "faceter/meshmgr/gmeshmg.hxx"

class VRML_MESH_MANAGER : public GLOBAL_MESH_MANAGER
{
public:

  VRML_MESH_MANAGER();

  void set_output_file( FILE *fp = stdout);
  void header();
  void footer();
  void flush_file();
  void viewCube( int value );
  void hardColors( int value );
  void lotsViewPoints( int value );
  void color();
  
  virtual logical need_global_indexed_polygons();
  virtual void begin_global_mesh_output( ENTITY*);
  virtual void start_indexed_polygon( int ipoly, int npolynode);
  virtual void start_indexed_polygon( int ipoly, int npolynode, int ishare );
  virtual void *null_node_id();
  virtual void *announce_global_node( int inode, VERTEX *, const position &X);
  virtual void *announce_global_node( int inode, EDGE *, 
				      const position &X, double t);
  virtual void *announce_global_node( int inode, FACE *, const position &X, 
				      const par_pos &uv);
  virtual void announce_counts( int npoly, int nnode, int npolynode );
  virtual void announce_indexed_polynode( int ipoly, int i, void *pnode);
  virtual void announce_indexed_polynode( ENTITY* a, int e, int i, void* o );
  virtual void announce_indexed_polynode( ENTITY* E, int poly, int i,  void* id, 
					  const double& edge_tpar,
					  const par_pos& uv,
					  const position& X, 
					  const unit_vector& N );
  virtual void end_indexed_polygon( int ipoly);
  virtual void end_global_mesh_output( ENTITY*);
  
private:

  FILE *outfile;
  logical startedCoordIndex;
  logical pointStarted;
  char _color[20];
  int testCube;
  int hardCodeColors;
  int viewPoints;

  void *addnode( int id, const position &);
  void randColor();
  void randColor( char* color );
  void insertCube(); //insert a test cube in the scene
  void insertDEFS();
  void insertViews();
};

#endif
