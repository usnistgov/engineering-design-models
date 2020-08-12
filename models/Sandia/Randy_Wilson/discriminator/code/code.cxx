BODY *restore_or_null(const char *filename, logical tell)
// restore a body from the named file, returning NULL if failure
{
  FILE* file = fopen(filename, "r");
  if (!file) 
    {
      if (tell) 
	gui_progress("Failed to load ACIS body from file ", filename, ":\n",
		     "    File does not exist");
      return NULL;
    }
  ENTITY_LIST b_list;
  outcome result = api_restore_entity_list(file, TRUE, b_list);
  fclose(file);
  BODY *b = (BODY *) b_list[0];
  if (!result.ok())
    {
      if (tell)
	gui_progress("Failed to load ACIS body from file ", filename, ":\n",
		     "    ", find_err_mess(result.error_number()));
      b = NULL;
    }
  return b;
}

BODY *restore_or_die(const char *filename)
// restore a body from the named file, or die with error message
{
  BODY *b = restore_or_null(filename, TRUE);
  if (b == NULL) 
    die("Unable to restore body from file.  Dying.");
  return b;
}


void parse(const char* filename, Part* part, transf t, int indent)
//parse the part file named by filename and transform the part by t.
{
  BODY *b = restore_or_die(filename);
  api_apply_transf(b, t);
  part->set_body(b);
}

  
void parse(const char* assembly_file, Assembly* assembly, const transf &t,
	   int &next_part_num, int indent)
//Parse an assembly.  
{
  ifstream ifile(assembly_file);
  if (!ifile) 
    {
      gui_progress("FAILED TO OPEN ", assembly_file, " -- Exiting.");
      exit(1);
    }

  const int filenamesize = 1024;
  char element_file[filenamesize];
  while (ifile >> element_file)
    if (element_file[0] == '#')                // comment lines
      ifile.ignore(10000, '\n');
    else 
      {
	int id;
	ifile >> id;
	vector x_vec, y_vec, z_vec, origin;
	ifile >> x_vec.x() >> x_vec.y() >> x_vec.z();
	ifile >> y_vec.x() >> y_vec.y() >> y_vec.z();
	ifile >> z_vec.x() >> z_vec.y() >> z_vec.z();
	double scale_factor = x_vec.len();
	if (neq(scale_factor, 1.0))
	  {
	    if (neq(scale_factor, y_vec.len()) ||
		neq(scale_factor, z_vec.len()))
	      die("Uneven scaling in assembly parse routine");
	    x_vec = normalise(x_vec);
	    y_vec = normalise(y_vec);
	    z_vec = normalise(z_vec);
	  }
	matrix m = matrix(x_vec,y_vec,z_vec);
	ifile >> origin.x() >> origin.y() >> origin.z();
	
	transf trans = restore_transf(m, origin, scale_factor, 
				      TRUE, FALSE, FALSE);
	                              // rotate, reflect, and shear
	trans = trans * t; 
 
	Assembly_Element* decide(const char*, const transf &, int,int &, int);
	Assembly_Element* el = decide(element_file, trans, id, next_part_num,
				      indent + 4);           // indent more
	assembly->add_element(el);
      }
  ifile.close();
}


Assembly_Element* decide(const char* filename, const transf &t, 
			 int id, int &next_part_num,
			 int indent)
//Decide what kind of element we have and parse it.  Also transform it.
// indent is current level of indenting, += 3 for each subassembly
{
  int length = strlen(filename);
  if (length <= 4)
    die("Bad filename in decide()");

  char name[100];
  strncpy(name, filename, length-4);
  name[length-4] = '\0';
  
  if (streq(filename + length - 4, ".asy"))
    {
      Assembly* assembly = new Assembly(name, id);
      parse(filename, assembly, t, next_part_num, indent);
      return assembly;
    }
  else
    {
      Part* part = new Part(name, id, next_part_num++);
      parse(filename, part, t, indent);
      return part;
    }
}


Assembly* read_assembly(const char* filename)
//Parse the given assembly .asy file
// Also ensure that returned assembly has mm as units
{
  transf t = scale_transf(1.0); 
  int partnum = 1;        // first part numbered 1
  Assembly_Element* element = decide(filename, t, 0, partnum, 0);
  
  if (element->type() == PART)
    die ("Non-assembly file given to parse(assembly)");

  Assembly *assembly = (Assembly*) element;
  assembly->set_num_parts(partnum-1);
  return assembly;
}


