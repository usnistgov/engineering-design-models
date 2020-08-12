{ Assembly
    { Part
	{ URL table.part }
	{ Name table }
	{ Transform Translation 0 0 0 }
    }
    { Part
	{ URL part_rack.part }
	{ Name part_rack }
	{ Transform Translation 150 400 0 }
    }
    { Part
	{ URL tool_rack.part }
	{ Name tool_rack }
	{ Transform Translation -500 400 0 }
    }
    { Joint Fixed
	{ Name tool_rack_table }
	{ BasePart table }
	{ AttachedPart tool_rack }
	{ JointFeatures
	    { Point table 0 0 0 }
	    { Point tool_rack 0 0 0 }
	}
    }
    { Joint Fixed
	{ Name part_rack_table }
	{ BasePart table }
	{ AttachedPart part_rack }
	{ JointFeatures
	    { Point table 0 0 0 }
	    { Point part_rack 0 0 0 }
	}
    }
}
