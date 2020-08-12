#This was the environment actually used in the seeker demo on the codes video
	
{ Assembly
  { Part
     { URL seeker_table.part }
     { Name seeker_table }
     { Transform Translation 0 0 0 }
  }
  { Part
     { URL seeker_part_rack.part }
     { Name seeker_part_rack }
     { Transform Translation -390 300 0 }
  }
  { Part
     { URL seeker_tool_rack.part }
     { Name seeker_tool_rack }
     { Transform Translation -923.001 300 0 }
  }
  { Joint Fixed
     { Name seeker_tool_rack_seeker_table }
     { BasePart seeker_table }
     { AttachedPart seeker_tool_rack }
     { JointFeatures 
       { Point seeker_table 0 0 0 }
       { Point seeker_tool_rack 0 0 0 }
     }
  }
  { Joint Fixed
     { Name seeker_part_rack_seeker_table }
     { BasePart seeker_table }
     { AttachedPart seeker_part_rack }
     { JointFeatures 
       { Point seeker_table 0 0 0 }
       { Point seeker_part_rack 0 0 0 }
     }
  }
}
