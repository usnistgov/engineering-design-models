# mallet tool
{ Tool mallet
  { Name mallet }
  { Body
    { URL mallet.asm }
    { Transform Homogeneous 0 0 0 -1 0 0 0 0 1}
  }
  { PartFeatures
    { Type ApplicationPoint } #Application Face ID
    { Type ApplicationDist} #Distance the object moves
  }
  { Parameters
    { OperationDist 100 } # given 	
  }
  { ApplicabilityCondition "expr 1" } #implicit interference checking will be performed
  { Operation Hammer
    { MotionMacro 
      #engage
      #take into account the initial orientation 
      "AbsMoveTool $ApplicationPoint(Transform) RelativeTo $Part(Transform)" 
      "RelMoveTool Transform Translation 0 0 $OperationDist"
      #operate 
      #vertical motion 
      "RelMoveTool Transform Translation 0 0 -$OperationDist"
      "Attach $Tool(Name) $Part(Name)" 
      "RelMoveTool Transform Translation 0 0 -$ApplicationDist(Dist)" # a simple translation
       #disengage
      "Detach $Tool(Name) $Part(Name)"
      "RelMoveTool Transform Translation 0 0 $OperationDist"
      "Attach $Part(Name) $Subassembly(Name)"
      "AbsMoveTool $Tool(Transform)"
    }
  }
}

