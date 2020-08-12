{ Tool hex_wrench 
  { Name 0.2in_allen_short }
  { Body
    { URL 0.2in_allen_wrench.asm }
#    { Transform Homogeneous  -1.16258 0 -2.5 1 0 0 0 0 -1 }
    { Transform Homogeneous   -0.0465032  0 -0.1 1 0 0 0 0 -1 }
  }
  { PartFeatures
    { Type HexagonalSlot }
    { Type Thread }
  }
  { Parameters
#   { Width 2.5 }
#    { Depth 3 }

    { Width 0.1 }
    { Depth 0.12 }

  }
#  { ApplicabilityCondition "expr $Width == $HexagonalSlot(Width)" }
  { ApplicabilityCondition "expr 1" }
  { Operation Screw
    { MotionMacro 
      #engage
      "AbsMoveTool $HexagonalSlot(Transform) RelativeTo $Part(Transform)"
      "RelMoveTool Transform Translation 0 0 -$HexagonalSlot(Depth)"
      "Attach $Tool(Name) $Part(Name)"
      #operate 

      "RelMoveToolWithRetraction Transform Screw 0 0 0 0 0 1 [expr -360*$Thread(Depth)*$Thread(Hand)/$Thread(Pitch)] -$Thread(Depth)"
#      "RelMoveTool Transform Screw 0 0 0 0 0 1 [expr -360*$Thread(Depth)*$Thread(Hand)/$Thread(Pitch)] -$Thread(Depth)"
      #disengage
      "Detach $Tool(Name) $Part(Name)"
      "RelMoveTool Transform Translation 0 0 $HexagonalSlot(Depth)"
      "Attach $Part(Name) $Subassembly(Name)"
      "AbsMoveTool $Tool(Transform)"
    }
  }
  { Operation Unscrew
    { MotionMacro 
      #engage
      "AbsMoveTool $HexagonalSlot(Transform) RelativeTo $Part(Transform)"
      "RelMoveTool Transform Translation 0 0 -$HexagonalSlot(Depth)" 
      "Detach $Part(Name) $Subassembly(Name)"
      "Attach $Tool(Name) $Part(Name)"
      #operate 
      "RelMoveTool Transform Screw 0 0 0 0 0 1 [expr 360*$Thread(Depth)*$Thread(Hand)/$Thread(Pitch)] $Thread(Depth)"
      "Detach $Tool(Name) $Part(Name)"
      #disengage
      "RelMoveTool Transform Translation 0 0 $HexagonalSlot(Depth)"
      "AbsMoveTool $Tool(Transform)"
    }
  }
  { Operation Tighten
    { MotionMacro 
      #engage
      "AbsMoveTool $HexagonalSlot(Transform) RelativeTo $Part(Transform)"
      "RelMoveTool Transform Translation 0 0 -$HexagonalSlot(Depth)"
      #operate 
      "Pause 3"
      #disengage
      "RelMoveTool Transform Translation 0 0 $HexagonalSlot(Depth)"
      "AbsMoveTool $Tool(Transform)"
    }
  }
  { Operation Loosen
    { MotionMacro 
      #engage
      "AbsMoveTool $HexagonalSlot(Transform) RelativeTo $Part(Transform)"
      "RelMoveTool Transform Translation 0 0 -$HexagonalSlot(Depth)"
      #operate 
      "Pause 3"
      #disengage
      "RelMoveTool Transform Translation 0 0 $HexagonalSlot(Depth)"
      "AbsMoveTool $Tool(Transform)"
    }
  }
}

