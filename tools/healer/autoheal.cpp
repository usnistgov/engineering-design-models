/*
ACIS SAT auto healer

File name: autoheal.cpp

Description: This program heal an  ACIS sat file  

Requirement: ACIS libraries version 6.3

By Cheuk Yiu Ip, 28 March 2002
*/


#include <stdio.h>
#include <string.h>
#include "kernel/acis.hxx"
#include "kernel/kernapi/api/api.hxx"
#include "kernel/kernapi/api/kernapi.hxx"
#include "kernel/kerndata/lists/lists.hxx" 
#include "baseutil/logical.h"
#include "kernel/kerndata/data/entity.hxx"
#include "kernel/kerndata/top/body.hxx"
#include "kernel/kerndata/savres/fileinfo.hxx"
#include "kernel/kernutil/version/version.hxx"
#include "kernel/kerndata/top/body.hxx" 
#include "healhusk/heal_api/heal_api.hxx" 

int main( int argc,  char* argv[] ) {

  char infile[128];
  char outfile[128];
  FILE* fin = NULL; //FILE* for output
  FILE* fout = NULL; //FILE* for output

  ENTITY_LIST entlist;
  outcome rc;

  if( argc != 3 ) {
    printf( "Usage: autoheal <input.sat> <output.sat>\n" );
    return(1);
  }

  //Determine the names of output file and log file
  strcpy( infile, argv[1] );
  strcpy( outfile, argv[2] );

  /*initialization*/
  rc = api_start_modeller( 0 );
  if(!rc.ok()) {
    printf( "Could not start modeller\n" );
    printf( "%s", find_err_mess( rc.error_number() ) );
  }
  
  /*Read an SAT file*/
  
  fin = fopen(infile, "r");
  api_restore_entity_list(fin, TRUE, entlist);

  /*healing*/
  BODY* TheBody;
  entlist.init();
  while( TheBody = (BODY*)entlist.next()){
    rc =  api_hh_init_body_for_healing(TheBody);
    rc =  api_hh_auto_heal(TheBody);
    rc =  api_hh_end_body_for_healing (TheBody);
    
    if(!rc.ok()){
      printf( "%s\n",  infile );
      printf( "Error: Could not heal a body!\n" );
      printf( "%s\n", find_err_mess( rc.error_number() ) );
    }
  }

  /*Save a SAT file*/

  //Set the SAT file info
  FileInfo info;
  char id_string[128];
  
  sprintf( id_string, "GICL ACIS Healer - Source: %s - %d %d",
	   infile,
	   get_major_version(), get_minor_version()
	   );

  info.set_product_id( id_string );
  info.set_units(1.0 );
  api_set_file_info( (FileId), info);
  api_set_file_info( (FileUnits), info);

  //Save the Entity List into a SAT file
  fout = fopen( outfile, "w" );
  rc = api_save_entity_list( fout, TRUE, entlist );
  if( !rc.ok() ) {
    printf( "%s\n",  infile );
    printf( "Error: Could not save SAT file!\n`" );
    printf( "%s\n", find_err_mess( rc.error_number() ) );
  }
  
  fclose( fout );
  
  //Destructions and clean up
  entlist.init();
  while( TheBody = (BODY*)entlist.next() )
    api_del_entity( TheBody );
  
  api_stop_modeller();
  
  return( 0 );
}
//Program End
