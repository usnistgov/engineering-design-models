{ Assembly

# List of parts forming the assembly
{ Part
  { Name base }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/base.part }
  { Transform Identity }
}
{ Part
  { Name motor }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/motor.part }
  { Transform Identity }
}
{ Part
  { Name motor_sleeve }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/motor_sleeve.part }
  { Transform Identity }
}
{ Part
  { Name potentiometer }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/potentiometer.part }
  { Transform Identity }
}
{ Part
  { Name potentiometer_sleeve }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/potentiometer_sleeve.part }
  { Transform Identity }
}
{ Part
  { Name scanner }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/scanner.part }
  { Transform Identity }
}
{ Part
  { Name screw_frame_to_base }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/screw_frame_to_base.part }
  { Transform Identity }
}
{ Part
  { Name screw_frame_to_base_back }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/screw_frame_to_base_back.part }
  { Transform Identity }
}
{ Part
  { Name screw_potentiometer_to_frame }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/screw_potentiometer_to_frame.part }
  { Transform Identity }
}
{ Part
  { Name screw_potentiometer_to_frame_back }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/screw_potentiometer_to_frame_back.part }
  { Transform Identity }
}
{ Part
  { Name support_frame }
  { URL file://localhost/afs/cs/project/edrc-codes-17/demo/Assemblies/scanner/support_frame.part }
  { Transform Identity }
}

# List of joints between parts
{ Joint Fixed
  { Name base_support_frame}
  { BasePart base }
  { AttachedPart support_frame }
  { JointFeatures     { Point base 0 0 0 }
     { Point support_frame 0 0 0 }
  }
}
{ Joint Fixed
  { Name motor_scanner}
  { BasePart motor }
  { AttachedPart scanner }
  { JointFeatures     { Point motor 0 0 0 }
     { Point scanner 0 0 0 }
  }
}
{ Joint Fixed
  { Name motor_sleeve_support_frame}
  { BasePart motor_sleeve }
  { AttachedPart support_frame }
  { JointFeatures     { Point motor_sleeve 0 0 0 }
     { Point support_frame 0 0 0 }
  }
}
{ Joint Fixed
  { Name potentiometer_scanner}
  { BasePart potentiometer }
  { AttachedPart scanner }
  { JointFeatures     { Point potentiometer 0 0 0 }
     { Point scanner 0 0 0 }
  }
}
{ Joint Fixed
  { Name potentiometer_sleeve_support_frame}
  { BasePart potentiometer_sleeve }
  { AttachedPart support_frame }
  { JointFeatures     { Point potentiometer_sleeve 0 0 0 }
     { Point support_frame 0 0 0 }
  }
}
{ Joint Fixed
  { Name screw_frame_to_base_support_frame}
  { BasePart screw_frame_to_base }
  { AttachedPart support_frame }
  { JointFeatures     { Point screw_frame_to_base 0 0 0 }
     { Point support_frame 0 0 0 }
  }
}
{ Joint Fixed
  { Name screw_frame_to_base_back_support_frame}
  { BasePart screw_frame_to_base_back }
  { AttachedPart support_frame }
  { JointFeatures     { Point screw_frame_to_base_back 0 0 0 }
     { Point support_frame 0 0 0 }
  }
}
{ Joint Fixed
  { Name screw_potentiometer_to_frame_support_frame}
  { BasePart screw_potentiometer_to_frame }
  { AttachedPart support_frame }
  { JointFeatures     { Point screw_potentiometer_to_frame 0 0 0 }
     { Point support_frame 0 0 0 }
  }
}
{ Joint Fixed
  { Name screw_potentiometer_to_frame_back_support_frame}
  { BasePart screw_potentiometer_to_frame_back }
  { AttachedPart support_frame }
  { JointFeatures     { Point screw_potentiometer_to_frame_back 0 0 0 }
     { Point support_frame 0 0 0 }
  }
}
{ Joint Revolute
  { Name motor_sleeve_motor}
  { BasePart motor_sleeve }
  { AttachedPart motor } 
  { JointFeatures     { Axis motor_sleeve 150 60 15 0 0 1 1 0 0 }
     { Axis motor 150 60 15 0 0 1 1 0 0 }
  }
  { Articulations {Theta 0 -30 0}  }
}

}
