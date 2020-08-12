/* 
   This code may be freely distributed as long as it contains the
	following copyright notices.

   This program is derived off of work done by (c) Gordon Little 1996

   Copyright (C) 2001 Daniel Lapadat (DanL@drexel.edu)

   Modified by Daniel Lapadat (DanL@drexel.edu)
   Modified 5/17/2001
   Modifications: -Now translates sat files to VRML 2.0
		  -Entities' colors are different so that they 
		   can be recognized easier
                  -Scaled entities and centered them
		  -Refinement can now vary

   Bug Fixes: -(6/15/2001) Scaling and Translations are now done correctly

   Sat2Vrml.cxx converts SAT files to VRML 2.0 files
   Copyright (C) 2001 Daniel Lapadat (DanL@drexel.edu)

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
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "kernel/acis.hxx"
#include "kernel/acis3dt.h"

#include "baseutil/logical.h"
#include "baseutil/vector/box.hxx"
#include "baseutil/vector/transf.hxx"
#include "baseutil/vector/position.hxx"
#include "faceter/api/af_api.hxx"
#include "faceter/attribs/meshat.hxx"
#include "kernel/kernapi/api/api.hxx"
#include "kernel/kernapi/api/kernapi.hxx"
#include "kernel/kerndata/data/entity.hxx"
#include "kernel/kerndata/lists/lists.hxx"
#include "kernel/kerndata/geometry/getbox.hxx" 
#include "kernel/kerndata/top/body.hxx"
#include "faceter/attribs/refine.hxx"
#include "kernel/kerndata/geom/transfrm.hxx"

#include "VrmlMM.hxx"

#define BUFFER 30

void getline( char* str );
void setRefine( REFINEMENT* refine );
int getGrading( char* grading );
int getGridMode( char* gridMode );
int getTriangMode( char* triangMode );
int getAdjustMode( char* adjustMode );
int getSurfMode( char* surfMode );
static double max( double a, double b );

int main( int argc, const char** argv ) {
  outcome rc;
  BODY* theBody = NULL;
  FILE *satFile = NULL, *wrlFile = NULL;
  ENTITY_LIST entList;
  REFINEMENT* ref = NULL;
  int refFlag = 0;
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;
  double scale = 1.0;

  //check if we are using a refinement
  if( argc > 3 ) {
    refFlag = strcmp( argv[1], "-ref" );
    if( refFlag == 0 ) {
      refFlag = 1;
    }
    else {
      refFlag = 0;
   }
  }

  //make sure that we have a correct number of arguments
  if( ( argc != 3 && argc != 4 && argc != 7 && argc != 8 ) || 
      ( argc == 4 && !refFlag ) ) {
    printf( "Usage: Sat2Vrml [-ref x y z scale] input.sat output.wrl\n" );
    printf( "        -ref is to set the refinement\n" );
    return( 1 );
  }

  //set the scale and position of the vrml model if
  //those arguments are passed to us
  if( argc == 7 || argc == 8 ) {
    x = atof( argv[ refFlag+1 ] );
    y = atof( argv[ refFlag+2 ] );
    z = atof( argv[ refFlag+3 ] );
    scale = atof( argv[ refFlag+4 ] );
  }

  //start the modeller
  rc = api_start_modeller( 0 );
  if( !rc.ok() ) {
    printf( "could not start modeller\n" );
    printf( "%s", find_err_mess( rc.error_number() ) );
  }
  
  printf( "Started Modeller\n" );

  //open the satfile and restore the entity list
  if( argc > 6 ) {
    satFile = fopen( argv[refFlag+5], "r" );
    printf( argv[refFlag+5] );
    printf( "\n" );
  }
  else {
    satFile = fopen( argv[refFlag+1], "r" );
    printf( "%s %d \n",argv[refFlag+1], refFlag+1 );
    //printf( "\n" );
  }
  if( !satFile ) {
    printf( "Error opening SAT file, check filename and try again\n" );
    return( 1 );
  }
  
  printf("SAT File opened OK\n");
  
  rc = api_restore_entity_list( satFile, TRUE, entList);
  if( !rc.ok() ) {
    printf( "Cannot restore entity list\n" );
    return( 1 );
  }
  fclose( satFile );

  //open the wrl file for writting out to
  if( argc > 6 ) {
    wrlFile = fopen( argv[refFlag+6], "w" );
  }
  else {
    wrlFile = fopen( argv[refFlag+2], "w" );
  }
  if( !wrlFile ) {
    printf( "Error opening output file\n" );
    return( 1 );
  }
  if( argc > 6 ) {
    printf( "Opened file %s\n", argv[refFlag+6] );
  }
  else {
    printf( "Opened file %s\n", argv[refFlag+2] );
  }

  //start the faceter
  rc = api_initialize_faceter();
  if( !rc.ok() ) {
    printf( "Error initializing faceter.\n" );
    fclose( wrlFile );
    return( 1 );
  }
  
  //make the vrml mesh manager
  VRML_MESH_MANAGER *MM = new VRML_MESH_MANAGER();
  rc = api_set_mesh_manager( (MESH_MANAGER *) MM);
  if( !rc.ok() ) {
    printf( "Could not set the Mesh Manager\n" );
    fclose( wrlFile );
    return( 1 );
  }

  //get the default refinement
  rc = api_get_default_refinement( ref );
  if( !rc.ok() ) {
    printf( "Couldn't get a refinement\n" );
    return( 1 );
  }
  
  //change the refinement is flag set
  if( refFlag ==  1 ) {
    setRefine( ref );
  }
  
  printf( "Set new MeshManager\n" );
  
  //set the refinement
  rc = api_set_default_refinement( ref );
  if( !rc.ok() ) {
    printf( "Could not set default refinement!\n" );
  }
  
  //tell the mesh manager where to write to and
  //write the header information
  MM->set_output_file( wrlFile );
  MM->header();

  //find the scale and apply any transforms already there
  //and find a box that will fit everything
  entList.init();
  box bounds;
  int index = 1;
  while( theBody = (BODY*)entList.next() ) {
    if( !is_REFINEMENT( (ENTITY*)theBody ) ) {
      api_change_body_trans( theBody, NULL );

      if( index == 1 ) {
	bounds = get_body_box( theBody, NULL );
	index = 0;
      }
      else {
	bounds = bounds | get_body_box( theBody, NULL );
      }
    }
  }

  //figure out the scaling factor to scale to the correct size
  //and then find out the direction and distance that we need to
  //move the model so that it has a center at x, y, z

  //find out which axis is the largest
  double max_dim = labs( bounds.high().x() - bounds.low().x() );
  max_dim = max( max_dim,
		 labs( bounds.high().y() - bounds.low().y()) );
  max_dim = max( max_dim,
		 labs( bounds.high().z() - bounds.low().z()) );
  //make scale transform
  scale = scale/max_dim;
  transf trans = scale_transf( scale );
  
  //make translation transform
  vector vec =  position( x, y, z ) - bounds.mid() * scale;
  transf tranl = translate_transf( vec );

  //apply the transforms to all of the bodies
  index = 0;
  entList.init();
  while( theBody = (BODY*)entList.next() ) {
    if( !is_REFINEMENT( theBody ) ) {
      index++;
      
      //apply scale transform
      api_apply_transf( (ENTITY *)theBody, trans );
      rc = api_change_body_trans( theBody, NULL );
      if( !rc.ok() ) {
	printf( "WARNING: Scale transforms lost!\n" );
      }
      
      //apply translation transform
      api_apply_transf( (ENTITY *)theBody, tranl );
      rc = api_change_body_trans( theBody, NULL );
      if( !rc.ok() ) {
	printf( "WARNING: Translation transforms lost!\n" );
      }
      
      rc = api_facet_entity( theBody );
      if( !rc.ok() ) {
	printf( "Could not facet Entity!\n" );
	fclose( wrlFile );
	return( 1 );
      }
      
      printf( "Faceted entity %d...", index );
    }
  }
  
  printf( "Done!\n" );
  
  //print the vrml footer and close the file
  MM->footer();
  fclose( wrlFile );
  delete MM;

  //clean up
  entList.init();
  while( theBody = (BODY*)entList.next() )
    api_del_entity( theBody );
  
  api_terminate_faceter();
  
  return( 0 );
}

void getline( char* str ) {
  char tmp;
  int index;

  //ignore the first newline hack
  scanf("%c", &tmp);
  tmp ='\0';

  for( index = 0; (index < BUFFER-1) && (tmp != '\n'); index++ ) {
    scanf("%c", &tmp);
    if( tmp != '\n' ) {
      str[index] = tmp;
    }
  }
  str[index-1] = '\0';

  //ignore all after the buffer limit has been met
  while( tmp != '\n' ) {
    scanf("%c", &tmp);
  }
}

//set the refinement entity
void setRefine( REFINEMENT* refine ) {
  //the default values
  float surfTol = -1.0;
  float normTol = 15.0; 
  float aspectRatio = 0.0; 
  float maxEdgeLen = 0.0;
  int minVGridLines = 0;
  int minUGridLines = 0;
  int maxGridLines = 10000; 
  char grading[BUFFER] = "FALSE";
  char gridMode[BUFFER] = "AF_GRID_INTERIOR";
  char triangMode[BUFFER] = "AF_TRIANG_FRINGE_2";
  char adjustMode[BUFFER] = "AF_ADJUST_NON_GRID";
  char surfMode[BUFFER] = "AF_SURF_ALL";
  int choice;

  //loop until we are done changing the refinement
  do {
    printf("\nRefinement Values:\n");
    printf("1. Surface Tolerance (%15.15f)\n", surfTol );
    printf("2. Normal Tolerance (%15.15f)\n", normTol );
    printf("3. Aspect Ratio (%15.15f)\n", aspectRatio );
    printf("4. Max Edge Length (%15.15f)\n", maxEdgeLen );
    printf("5. Min V Grid Lines (%d)\n", minVGridLines );
    printf("6. Min U Grid Lines (%d)\n", minUGridLines );
    printf("7. Max Grid Lines (%d)\n", maxGridLines );
    printf("8. Grading (%s)\n", grading );
    printf("9. Grid Mode (%s)\n", gridMode );
    printf("10. Triang Mode (%s)\n", triangMode );
    printf("11. Adjust Mode (%s)\n", adjustMode );
    printf("12. Surf Mode (%s)\n", surfMode );
    printf("13. Accept Values and Continue\n\n" );
    printf("Enter menu item to change: " );
    scanf("%d", &choice );

    switch( choice ) {
    case 1:
      printf( "Enter a new value for Surface Tolerance: " );
      scanf( "%f", &surfTol );
      break;
    case 2:
      printf( "Enter a new value for Normal Tolerance: " );
      scanf( "%f", &normTol );
      break;
    case 3:
      printf( "Enter a new value for Aspect Ratio: " );
      scanf( "%f", &aspectRatio );
      break;
    case 4:
      printf( "Enter a new value for Max Edge Length: " );
      scanf( "%f", &maxEdgeLen );
      break;
    case 5:
      printf( "Enter a new value for Min V Grid Lines: " );
      scanf( "%d", &minVGridLines );
      break;
    case 6:
      printf( "Enter a new value for Min U Grid Lines: " );
      scanf("%d", &minUGridLines );
      break;
    case 7:
      printf( "Enter a new value for Max Grid Lines: " );
      scanf( "%d", &maxGridLines );
      break;
    case 8:
      printf( "Enter a new value for Grading: " );
      getline( grading );
      break;
    case 9:
      printf( "Enter a new value for Grid Mode: " );
      getline( gridMode );
      break;
    case 10:
      printf( "Enter a new value for Triang Mode: " );
      getline( triangMode );
      break;
    case 11:
      printf( "Enter a new value for Adjust Mode: " );
      getline( adjustMode );
      break;
    case 12:
      printf( "Enter a new value for Surf Mode: " );
      getline( surfMode );
      break;
    default:
      printf(" Values accepted! Continuing...\n" );
      choice = 13;
      break;
    }
  } while( choice != 13 );

  refine->set_surface_tol( (REFINEMENT_FLOAT)surfTol );
  refine->set_normal_tol( (REFINEMENT_FLOAT)normTol );
  refine->set_grid_aspect_ratio( (REFINEMENT_FLOAT)aspectRatio );
  refine->set_max_edge_length( (REFINEMENT_FLOAT)maxEdgeLen );
  refine->set_min_v_grid_lines( minVGridLines );
  refine->set_min_u_grid_lines( minUGridLines );
  refine->set_max_grid_lines( maxGridLines );
  refine->set_grading_mode( getGrading( grading ) );
  refine->set_grid_mode( (AF_GRID_MODE)getGridMode( gridMode ) );
  refine->set_triang_mode( (AF_TRIANG_MODE)getTriangMode( triangMode ) );
  refine->set_adjust_mode( (AF_ADJUST_MODE)getAdjustMode( adjustMode ) );
  refine->set_surf_mode( (AF_SURF_MODE)getSurfMode( surfMode ) );
}

//get the grading
int getGrading( char* grading ) {
  if( !strcmp( grading, "TRUE" ) || !strcmp( grading, "true" ) ) {
    return( 1 );
  }
  else if( !strcmp( grading, "FALSE" ) || !strcmp( grading, "false" ) ) {
    return( 0 );
  }
  else {
    printf( "WARNING: Not a valid value for grading, using default mode\n" );
    return( 0 );
  }
}

//get the grid mode
int getGridMode( char* gridMode ) {
  if( !strcmp( gridMode, "AF_GRID_INTERIOR" ) || 
      !strcmp( gridMode, "af_grid_interior" ) ) {
    return( 1 );
  }
  else if( !strcmp( gridMode, "AF_GRID_NONE" ) || 
	   !strcmp( gridMode, "af_grid_none" ) ) {
    return( 0 );
  }
  else if( !strcmp( gridMode, "AF_GRID_TO_EDGES" ) || 
	   !strcmp( gridMode, "af_grid_to_edges" ) ) {
    return( 2 );
  }
  else {
    printf( "WARNING: Not a valid value for grid mode, using default mode\n" );
    return( 1 );
  }
}

//get the triang mode 
int getTriangMode( char* triangMode ) {
  if( !strcmp( triangMode, "AF_TRIANG_FRINGE_2" ) || 
      !strcmp( triangMode, "af_triang_fringe_2" ) ) {
    return( 3 );
  }
  else if( !strcmp( triangMode, "AF_TRIANG_NONE" ) || 
	   !strcmp( triangMode, "af_triang_none" ) ) {
    return( 0 );
  }
  else if( !strcmp( triangMode, "AF_TRIANG_ALL" ) || 
	   !strcmp( triangMode, "af_triang_all" ) ) {
    return( 1 );
  }
  else if( !strcmp( triangMode, "AF_TRIANG_FRINGE_1" ) || 
	   !strcmp( triangMode, "af_triang_fringe_1" ) ) {
    return( 2 );
  }
  else if( !strcmp( triangMode, "AF_TRIANG_FRINGE_3" ) || 
	   !strcmp( triangMode, "af_triang_fringe_3" ) ) {
    return( 4 );
  }
  else if( !strcmp( triangMode, "AF_TRIANG_FRINGE_4" )  || 
	   !strcmp( triangMode, "af_triang_fringe_4" )) {
    return( 5 );
  }
  else {
    printf( "WARNING: Not a valid value for triang mode, using default mode\n" );
    return( 3 );
  }
}

//get the adjustmode that we want
int getAdjustMode( char* adjustMode ) {
  if( !strcmp( adjustMode, "AF_ADJUST_NON_GRID" ) || 
      !strcmp( adjustMode, "af_adjust_non_grid" ) ) {
    return( 1 );
  }
  else if( !strcmp( adjustMode, "AF_ADJUST_NONE" ) || 
	   !strcmp( adjustMode, "af_adjust_none" ) ) {
    return( 0 );
  }
  else if( !strcmp( adjustMode, "AF_ADJUST_ALL" ) || 
	   !strcmp( adjustMode, "af_adjust_all" ) ) {
    return( 2 );
  }
  else {
    printf( "WARNING: Not a valid value for adjust mode, using default mode\n" );
    return( 1 );
  }
}

//get which surface mode we want
int getSurfMode( char* surfMode ) {
  if( !strcmp( surfMode, "AF_SURF_ALL" ) || 
      !strcmp( surfMode, "af_surf_all" ) ) {
    return( 0 );
  }
  else if( !strcmp( surfMode, "AF_SURF_REGULAR" ) || 
	   !strcmp( surfMode, "af_surf_regular" ) ) {
    return( 1 );
  }
  else if( !strcmp( surfMode, "AF_SURF_IRREGULAR" ) || 
	   !strcmp( surfMode, "af_surf_irregular" ) ) {
    return( 2 );
  }
  else if( !strcmp( surfMode, "AF_SURF_PLANE" ) || 
	   !strcmp( surfMode, "af_surf_plane" ) ) {
    return( 3 );
  }
  else if( !strcmp( surfMode, "AF_SURF_CONE" ) || 
	   !strcmp( surfMode, "af_surf_cone" ) ) {
    return( 4 );
  }
  else if( !strcmp( surfMode, "AF_SURF_SPHERE" ) || 
	   !strcmp( surfMode, "af_surf_sphere" ) ) {
    return( 5 );
  }
  else if( !strcmp( surfMode, "AF_SURF_TORUS" ) || 
	   !strcmp( surfMode, "af_surf_torus" ) ) {
    return( 6 );
  }
  else if( !strcmp( surfMode, "AF_SURF_SPLINE" ) || 
	   !strcmp( surfMode, "af_surf_spline" ) ) {
    return( 7 );
  }
  else if( !strcmp( surfMode, "AF_SURF_MODE_ARRAY_DIM" ) || 
	   !strcmp( surfMode, "af_surf_mode_array_dim" ) ) {
    return( 8 );
  }
  else {
    printf( "WARNING: Not a valid value for surface mode, using default mode\n" );
    return( 0 );
  }
}

//find the max of two doubles
double max( double a, double b ) {
  if( a > b ) {
    return a;
  }
  else {
    return b;
  }
}
