{ Assembly
  { Part
     { URL spectrometer_table.part }
     { Name spectrometer_table }
     { Transform Translation 0 -8.25 -0.75 }
  }
  { Part
     { URL spectrometer_part_rack.part }
     { Name spectrometer_part_rack }
     { Transform Translation -18.6461 12.4307 0 }
  }
  { Part
     { URL spectrometer_tool_rack.part }
     { Name spectrometer_tool_rack }
     { Transform Translation -65.1302 12.4307 0 }
  }
  { Joint Fixed
     { Name spectrometer_tool_rack_spectrometer_table }
     { BasePart spectrometer_table }
     { AttachedPart spectrometer_tool_rack }
     { JointFeatures 
       { Point spectrometer_table 0 0 0 }
       { Point spectrometer_tool_rack 0 0 0 }
     }
  }
  { Joint Fixed
     { Name spectrometer_part_rack_spectrometer_table }
     { BasePart spectrometer_table }
     { AttachedPart spectrometer_part_rack }
     { JointFeatures 
       { Point spectrometer_table 0 0 0 }
       { Point spectrometer_part_rack 0 0 0 }
     }
  }
}
