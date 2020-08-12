{ Tool hex_wrench 
  { Name 5mm_allen_long }
  { Body
    { URL 5mm_allen_wrench.asm }
    { Transform Homogeneous -1.1658 27.5 -100 1 0 0 0 1 0 }
  }
  { PartFeatures
    { Type HexagonalSlot }
    { Type Thread }
  }
  { Parameters
    { Width 2.5 }
    { Depth 3 }
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
      "RelMoveTool Transform Screw 0 0 0 0 0 1 [expr -360*$Thread(Depth)*$Thread(Hand)/$Thread(Pitch)] -$Thread(Depth)"
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






