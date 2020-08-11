{ Tool no_tool
  { Name no_tool }
  # no PartFeatures defined
  # no Parameters for tool
  { ApplicabilityCondition "expr 1" }    # always applicable
  
  # this tool should support every possible operation.
  # at this point only position and screw are implemented.
  { Operation RelPosition
    { MotionMacro
       "AbsMovePart $Part(Name) $Operation(Transform) RelativeTo $Part(Final)"
       "if [ expr \\\"$Operation(Transform)\\\" == \\\" Transform Homogeneous 0 0 0 1 0 0 0 1 0 \\\" ] \\\{ Attach $Part(Name) $Subassembly(Name) \\\}"
    }
  }
  { Operation AbsPositionPart
    { MotionMacro
       "AbsMovePart $Part(Name) $Operation(Transform)"
    }
  }
  { Operation AbsPositionAssembly
    { MotionMacro
       "AbsMovePart $Subassembly(Name) $Operation(Transform)"
    }
  }
}
