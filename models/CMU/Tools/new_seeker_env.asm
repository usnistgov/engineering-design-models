{ Assembly
  { Part
     { URL new_seeker_table.part }
     { Name new_seeker_table }
     { Transform Translation 0 0 0 }
  }
  { Part
     { URL new_seeker_part_rack.part }
     { Name new_seeker_part_rack }
     { Transform Translation -390 300 0 }
  }
  { Part
     { URL new_seeker_tool_rack.part }
     { Name new_seeker_tool_rack }
     { Transform Translation -923.001 300 0 }
  }
  { Joint Fixed
     { Name new_seeker_tool_rack_new_seeker_table }
     { BasePart new_seeker_table }
     { AttachedPart new_seeker_tool_rack }
     { JointFeatures 
       { Point new_seeker_table 0 0 0 }
       { Point new_seeker_tool_rack 0 0 0 }
     }
  }
  { Joint Fixed
     { Name new_seeker_part_rack_new_seeker_table }
     { BasePart new_seeker_table }
     { AttachedPart new_seeker_part_rack }
     { JointFeatures 
       { Point new_seeker_table 0 0 0 }
       { Point new_seeker_part_rack 0 0 0 }
     }
  }
}
