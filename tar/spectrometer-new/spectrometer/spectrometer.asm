#This is the spectrometer with its parts MODELED in their proper positions

{ Assembly

  { Part
    { Name main_blocka_new }
    { URL main_blocka_new.part }
    { Transform Identity }
  }

#parts of the former upper_left_bellows_subassembly
  { Part
    { Name flange_pt202_16_left }
    { URL flange_pt202_16_left.part }
  }
  { Part
    { Name bellows_attach_ring_26_left }
    { URL bellows_attach_ring_26_left.part }
  }
  { Part
    { Name bellows_spacer_left }
    { URL bellows_spacer_left.part }
  }
  { Part
    { Name bellow_upper_left }
    { URL bellow_upper_left.part }
  }

#parts of the former upper_right_bellows_subassembly
  { Part
    { Name flange_pt202_16_right }
    { URL flange_pt202_16_right.part }
  }
  { Part
    { Name bellows_attach_ring_26_right }
    { URL bellows_attach_ring_26_right.part }
  }
  { Part
    { Name bellows_spacer_right }
    { URL bellows_spacer_right.part }
  }
  { Part
    { Name bellow_upper_right }
    { URL bellow_upper_right.part }
  }

#parts of the former lower_bellows_subassembly
  { Part
    { Name flange_pt201_11 }
    { URL flange_pt201_11.part }
  }
  { Part
    { Name bellows_attach_ring_21_v2 }
    { URL bellows_attach_ring_21_v2.part }
  }
  { Part
    { Name bellow_lower }
    { URL bellow_lower.part }
  }

#parts of the former front_linkage_subassembly
  { Part
    { Name spacer_67_front }
    { URL spacer_67_front.part }
  }
  { Part
#This is the shorter linkage with one edge rounded
    { Name linkage_arm_42 }
    { URL linkage_arm_42.part }
  }
#The next three screws attach spacer_67 to linkage_arm_42
  { Part
    { Name screw_link42_to_spacer67_upper }
    { URL screw_link42_to_spacer67_upper.part }
  }
  { Part
    { Name screw_link42_to_spacer67_left }
    { URL screw_link42_to_spacer67_left.part }
  }
  { Part
    { Name screw_link42_to_spacer67_right }
    { URL screw_link42_to_spacer67_right.part }
  }
  { Part
#This fits in the hole where linkage_arm_42 meets linkage_arm_43
#The face rests between main_linkage_arm_6a and linkage_arm_42
    { Name bearing_post_56_front }
    { URL bearing_post_56_front.part }
  }
  { Part
#This one rests between bearing_post_56 and linkage_arm_42
    { Name bearing_208_link_42_inner_43 }
    { URL bearing_208_link_42_inner_43.part }
  }
  { Part
#This one fits inside linkage_arm_42 and is the one closer to linkage_arm_43
    { Name bearing_208_link_42_outer_43 }
    { URL bearing_208_link_42_outer_43.part }
  }
#This one fits between the above bearing_208 and the below bearing_208
  { Part
    { Name spacer_223_v2_link_42_link_43 }
    { URL spacer_223_v2_link_42_link_43.part }
  }
  { Part
#This one fits inside linkage_arm_43 and is the one closer to linkage_arm_42
    { Name bearing_208_link_43_inner_42 }
    { URL bearing_208_link_43_inner_42.part }
  }
  { Part
    { Name linkage_arm_43 }
    { URL linkage_arm_43.part }
  }
  { Part
#This one fits in linkage_arm_43 from the outside, on the joint which attaches to linkage_arm_42
    { Name bearing_208_link_43_outer_42 }
    { URL bearing_208_link_43_outer_42.part }
  }
  { Part
#This one fits on the outside of linkage_arm_43, on the joint which attaches to linkage_arm_42
    { Name spacer_87_link_43_link_42 }
    { URL spacer_87_link_43_link_42.part }
  }
  { Part
#This is the inner nut on the joint that connects linkage_arm_42 and linkage_arm_43
    { Name nut_244_link_43_link_42_inner }
    { URL nut_244_link_43_link_42_inner.part }
  }
  { Part
#This is the outer nut on the joint that connects linkage_arm_42 and linkage_arm_43
    { Name nut_244_link_43_link_42_outer }
    { URL nut_244_link_43_link_42_outer.part }
  }
  { Part
    { Name spacer_66_front }
    { URL spacer_66_front.part }
  }
#The next three screws attach spacer_66 to linkage_arm_43
  { Part
    { Name screw_link43_to_spacer66_upper }
    { URL screw_link43_to_spacer66_upper.part }
  }
  { Part
    { Name screw_link43_to_spacer66_left }
    { URL screw_link43_to_spacer66_left.part }
  }
  { Part
    { Name screw_link43_to_spacer66_right }
    { URL screw_link43_to_spacer66_right.part }
  }
  { Part
#This shaft is at the joint where linkage_arm_42 and linkage_arm_short_46 are connected
    { Name bearing_shaft_57_link_42 }
    { URL bearing_shaft_57_link_42.part }
  }
  { Part
#This one fits into the inner linkage_arm_short_46 between the short linkage and linkage_arm_42
    { Name bearing_208_link_short_link_42 }
    { URL bearing_208_link_short_link_42.part }
  }
  { Part
#This one is attached to linkage_arm_42
    { Name linkage_arm_short_46_link_42 }
    { URL linkage_arm_short_46_link_42.part }
  }
  { Part
#This one fits into the inner linkage_arm_short_46 on the outside of the joint connecting to linkage_arm_42
    { Name bearing_208_outer_link_short_42 }
    { URL bearing_208_outer_link_short_42.part }
  }
  { Part
#This one fits outside the inner linkage_arm_short_46 on the joint connecting to linkage_arm_42
    { Name spacer_87_link_short_link_42 }
    { URL spacer_87_link_short_link_42.part }
  }	
  { Part
#This nut is the innermost on the joint connecting linkage_arm_42 to linkage_arm_short_46
    { Name nut_244_link_short_link_42_inner }
    { URL nut_244_link_short_link_42_inner.part }
  }
  { Part
#This nut is the outermost on the joint connecting linkage_arm_42 to linkage_arm_short_46
    { Name nut_244_link_short_link_42_outer }
    { URL nut_244_link_short_link_42_outer.part }
  }
  { Part
#This one fits in the joint connecting linkage_arm_43 linkage_arm_short_46
    { Name bearing_shaft_57_link_43 }
    { URL bearing_shaft_57_link_43.part }
  }
  { Part
#This one fits inside the outer linkage_arm_short_46 between it and linkage_arm_43
    { Name bearing_208_link_short_link_43 }
    { URL bearing_208_link_short_link_43.part }
  }
  { Part
#This one is attached to linkage_arm_43
    { Name linkage_arm_short_46_link_43 }
    { URL linkage_arm_short_46_link_43.part }
  }
  { Part
#This one fits into the outer linkage_arm_short_46 on the outside of the joint connecting to linkage_arm_43
    { Name bearing_208_outer_link_short_43 }
    { URL bearing_208_outer_link_short_43.part }
  }
  { Part
#This one fits inside of the outer linkage_arm_short_46 at the joint which connects to linkage_arm_43
    { Name spacer_87_link_short_link_43 }
    { URL spacer_87_link_short_link_43.part }
  }
  { Part
#This is the inner nut connecting linkage_arm_43 with the outer linkage_arm_short_46
    { Name nut_244_link_short_link_43_inner }
    { URL nut_244_link_short_link_43_inner.part }
  }
  { Part
#This is the outer nut connecting linkage_arm_43 with the outer linkage_arm_short_46
    { Name nut_244_link_short_link_43_outer }
    { URL nut_244_link_short_link_43_outer.part }
  }
  { Part
#This shaft fits in the joint connecting the two linkage_arm_short_46's together
#"shaft_62_front"
    { Name shaft_62_front }
    { URL shaft_62_front.part }
  }
  { Part
#This one fits in the inner linkage_arm_short_46 at the joint with the other linkage_arm_short_46
    { Name bearing_208_front_shorts_inner_link_outer }
    { URL bearing_208_front_shorts_inner_link_outer.part }
  }
  { Part
#This one fits between the above bearing_208 and the below bearing_208
    { Name spacer_223_v2_front_shorts }
    { URL spacer_223_v2_front_shorts.part }
  }
  { Part
#This one fits in the inner side of the outer linkage_arm_short_46 at the joint with the other linkage_arm_short_46
    { Name bearing_208_front_shorts_outer_link_inner }
    { URL bearing_208_front_shorts_outer_link_inner.part }
  }
  { Part
#This one fits in the outer side of the outer linkage_arm_short_46 at the joint with the other linkage_arm_short_46
    { Name bearing_208_front_shorts_outer_link_outer }
    { URL bearing_208_front_shorts_outer_link_outer.part }
  }
  { Part
#This one fits inside of the outer linkage_arm_short_46 in the joint connecting to the other linkage_arm_short_46
    { Name spacer_87_front_shorts }
    { URL spacer_87_front_shorts.part }
  }
  { Part
#This is the inner nut at the joint connecting the linkage_arm_short_46's
    { Name nut_244_front_shorts_inner }
    { URL nut_244_front_shorts_inner.part }
  }
  { Part
#This is the outer nut at the joint connecting the linkage_arm_short_46's
    { Name nut_244_front_shorts_outer }
    { URL nut_244_front_shorts_outer.part }
  }

#The following three screws connect the front_linkage_subassembly (via spacer_66) to the upper_bellows_subassembly (via flange_pt202_16) on the left
  { Part
    { Name screw_spacer66_to_flange202_front_vertical }
    { URL screw_spacer66_to_flange202_front_vertical.part }
  }
  { Part
    { Name screw_spacer66_to_flange202_front_left }
    { URL screw_spacer66_to_flange202_front_left.part }
  }
  { Part
    { Name screw_spacer66_to_flange202_front_right }
    { URL screw_spacer66_to_flange202_front_right.part }
  }
#The following three screws connect the front_linkage_subassembly (via spacer_67) to the upper_bellows_subassembly (via flange_pt202_16) on the right
  { Part
    { Name screw_spacer67_to_flange202_front_vertical }
    { URL screw_spacer67_to_flange202_front_vertical.part }
   }
  { Part
    { Name screw_spacer67_to_flange202_front_left }
    { URL screw_spacer67_to_flange202_front_left.part }
  }
  { Part
    { Name screw_spacer67_to_flange202_front_right }
    { URL screw_spacer67_to_flange202_front_right.part }
  }
#The next four screws connect the front_linkage_subassembly (via bearing_post_56) to main_linkage_arm_6 on the central_linkage_subassembly
  { Part
    { Name screw_post_to_main_link_front_upper_left }
    { URL screw_post_to_main_link_front_upper_left.part }
  }
  { Part
    { Name screw_post_to_main_link_front_upper_right }
    { URL screw_post_to_main_link_front_upper_right.part }
  }
  { Part
    { Name screw_post_to_main_link_front_lower_left }
    { URL screw_post_to_main_link_front_lower_left.part }
  }	
  { Part
    { Name screw_post_to_main_link_front_lower_right }
    { URL screw_post_to_main_link_front_lower_right.part }
  }

#parts of the former back_linkage_subassembly
  { Part
    { Name spacer_67_back }
    { URL spacer_67_back.part }
  }
  { Part
#This is the shorter linkage with one edge rounded
    { Name linkage_arm1_42 }
    { URL linkage_arm1_42.part }
  }
#The next three screws attach spacer_67 to linkage_arm1_42
  { Part
#This is the upper screw
    { Name screw_link142_to_spacer67_upper }
    { URL screw_link142_to_spacer67_upper.part }
  }
  { Part
#This is the screw on the left side
    { Name screw_link142_to_spacer67_left }
    { URL screw_link142_to_spacer67_left.part }
  }
  { Part
#This is the screw on the right side
    { Name screw_link142_to_spacer67_right }
    { URL screw_link142_to_spacer67_right.part }
  }
  { Part
#This fits in the hole where linkage_arm1_42 meets linkage1_arm_43
#The face rests between main_linkage_arm_6a and linkage_arm1_42
    { Name bearing_post_56_back }
    { URL bearing_post_56_back.part }
  }
  { Part
#This one rests between bearing_post_56 and linkage_arm1_42
    { Name bearing_208_link1_42_inner_143 }
    { URL bearing_208_link1_42_inner_143.part }
  }
  { Part
#This one fits inside linkage_arm1_42 and is the one closer to linkage_arm1_43
    { Name bearing_208_link1_42_outer_143 }
    { URL bearing_208_link1_42_outer_143.part }
  }
  { Part
    { Name spacer_223_v2_link1_42_link1_43 }
    { URL spacer_223_v2_link1_42_link1_43.part }
  }
  { Part
#This one fits inside linkage_arm1_43 and is the one closer to linkage_arm_42
    { Name bearing_208_link1_43_inner_142 }
    { URL bearing_208_link1_43_inner_142.part }
  }
  { Part
    { Name linkage_arm1_43 }
    { URL linkage_arm1_43.part }
  }
  { Part
#This one fits in the outer side of linkage_arm1_43, at the joint connecting it to linkage_arm1_42
    { Name bearing_208_link1_43_outer_142 }
    { URL bearing_208_link1_43_outer_142.part }
  }
  { Part
#This one fits in linkage_arm1_43 at the joint connecting it to linkage_arm1_42
    { Name spacer_87_link1_43_link1_42 }
    { URL spacer_87_link1_43_link1_42.part }
  }
  { Part
#This is the inner nut that connects linkage_arm1_43 to linkage_arm1_42
    { Name nut_244_link1_43_link1_42_inner }
    { URL nut_244_link1_43_link1_42_inner.part}
  }
  { Part
#This is the outer nut that connects linkage_arm1_43 to linkage_arm1_42
    { Name nut_244_link1_43_link1_42_outer }
    { URL nut_244_link1_43_link1_42_outer.part}
  }
  { Part
    { Name spacer_66_back }
    { URL spacer_66_back.part }
  }
#The next three screws attach spacer_66 to linkage_arm1_43
  { Part
#This is the upper screw
    { Name screw_link143_to_spacer66_upper }
    { URL screw_link143_to_spacer66_upper.part }
  }
  { Part
#This screw is on the left side
    { Name screw_link143_to_spacer66_left }
    { URL screw_link143_to_spacer66_left.part }
  }
  { Part
#This screw is on the right side
    { Name screw_link143_to_spacer66_right }
    { URL screw_link143_to_spacer66_right.part }
  }
  { Part
#This shaft fits in the joint connecting linkage_arm1_42 and linkage_arm_short_46
    { Name bearing_shaft_57_link1_42 }
    { URL bearing_shaft_57_link1_42.part }
  }
  { Part
#This one fits in the inner side of the linkage_arm_short_46 that connects to linkage_arm1_42
    { Name bearing_208_link_short_link1_42 }
    { URL bearing_208_link_short_link1_42.part }
  }
  { Part
#This one is attached to linkage_arm1_42
    { Name linkage_arm_short_46_link1_42 }
    { URL linkage_arm_short_46_link1_42.part }
  }
  { Part
#This one fits into the outer side of the linkage_arm_short_46 attached to linkage_arm1_42
    { Name bearing_208_outer_link_short_142 }
    { URL bearing_208_outer_link_short_142.part }
  }
  { Part
#This one fits inside the linkage_arm_short_46 attached to linkage_arm1_42
    { Name spacer_87_link_short_link1_42 }
    { URL spacer_87_link_short_link1_42.part }
  }
  { Part
#This is the inner nut on the joint connecting linkage_arm_short_46 and linkage_arm1_42
    { Name nut_244_link_short_link1_42_inner }
    { URL nut_244_link_short_link1_42_inner.part }
  }
  { Part
#This is the outer nut on the joint connecting linkage_arm_short_46 and linkage_arm1_42
    { Name nut_244_link_short_link1_42_outer }
    { URL nut_244_link_short_link1_42_outer.part }
  }
  { Part
#This one fits in the joint connecting linkage_arm1_43 and linkage_arm_short_46
    { Name bearing_shaft_57_link1_43 }
    { URL bearing_shaft_57_link1_43.part }
  }
  { Part
#This fits in the inner area of the linkage_arm_short_46 where it connects with linkage_arm1_43
#"bearing_208_link_short_link1_43"
    { Name bearing_208_link_short_link1_43 }
    { URL bearing_208_link_short_link1_43.part }
  }
  { Part
#This one is attached to linkage_arm1_43
    { Name linkage_arm_short_46_link1_43 }
    { URL linkage_arm_short_46_link1_43.part }
  }
  { Part
#This one fits in the outer side of the linkage_arm_short_46 that connects to linkage_arm1_43
    { Name bearing_208_outer_link_short_143 }
    { URL bearing_208_outer_link_short_143.part }
  }
  { Part
#This one fits in the joint connecting linkage_arm_short_46 and linkage_arm1_43
    { Name spacer_87_link_short_link1_43 }
    { URL spacer_87_link_short_link1_43.part }
  }
  { Part
#This is the inner nut at the joint connecting linkage_arm_short_46 and linkage_arm1_43
    { Name nut_244_link_short_link1_43_inner }
    { URL nut_244_link_short_link1_43_inner.part }
  }
  { Part
#This is the outer nut at the joint connecting linkage_arm_short_46 and linkage_arm1_43
    { Name nut_244_link_short_link1_43_outer }
    { URL nut_244_link_short_link1_43_outer.part }
  }
  { Part
#This shaft fits in the joint connecting the two linkage_arm_short_46's
    { Name shaft_62_back }
    { URL shaft_62_back.part }
  }
  { Part
#This one fits on the outer side of the inner linkage_arm_short_46 at the joint connecting to the other linkage_arm_short_46
    { Name bearing_208_back_shorts_inner_link_outer }
    { URL bearing_208_back_shorts_inner_link_outer.part }
  }
  { Part
    { Name spacer_223_v2_back_shorts }
    { URL spacer_223_v2_back_shorts.part }
  }
  { Part
#This one fits on the inner side of the outer linkage_arm_short_46 at the joint connecting to the other linkage_arm_short_46
    { Name bearing_208_back_shorts_outer_link_inner }
    { URL bearing_208_back_shorts_outer_link_inner.part }
  }
  { Part
#This one fits in the outer side of the outer linkage_arm_46 that fits into the other linkage_arm_46
    { Name bearing_208_back_shorts_outer_link_outer }
    { URL bearing_208_back_shorts_outer_link_outer.part }
  }
  { Part
#This one fits in the joint connecting the two linkage_arm_46's
    { Name spacer_87_back_shorts }
    { URL spacer_87_back_shorts.part }
  }
  { Part
#This is the inner nut on the joint connecting the two linkage_arm_46's
    { Name nut_244_back_shorts_inner }
    { URL nut_244_back_shorts_inner.part }
  }
  { Part
#This is the outer nut on the joint connecting the two linkage_arm_46's
    { Name nut_244_back_shorts_outer }
    { URL nut_244_back_shorts_outer.part }
  }

#The following three screws connect the back_linkage_subassembly (via spacer_66) to the upper_bellows_subassembly (via flange_pt202_16) on the left
  { Part
    { Name screw_spacer66_to_flange202_back_vertical }
    { URL screw_spacer66_to_flange202_back_vertical.part }
  }
  { Part
    { Name screw_spacer66_to_flange202_back_left }
    { URL screw_spacer66_to_flange202_back_left.part }
  }
  { Part
    { Name screw_spacer66_to_flange202_back_right }
    { URL screw_spacer66_to_flange202_back_right.part }
  }
#The following three screws connect the back_linkage_subassembly (via spacer_67) to the upper_bellows_subassembly (via flange_pt202_16) on the right
  { Part
    { Name screw_spacer67_to_flange202_back_vertical }
    { URL screw_spacer67_to_flange202_back_vertical.part }
  }
  { Part
    { Name screw_spacer67_to_flange202_back_left }
    { URL screw_spacer67_to_flange202_back_left.part }
  }
  { Part
    { Name screw_spacer67_to_flange202_back_right }
    { URL screw_spacer67_to_flange202_back_right.part }
  }
#The following four screws connect bearing_post_56 (in the back_linkage_subassembly) to the back main_linkage_arm_6a
  { Part
    { Name screw_post_to_main_link_back_upper_left }
    { URL screw_post_to_main_link_back_upper_left.part }
  }
  { Part
    { Name screw_post_to_main_link_back_upper_right }
    { URL screw_post_to_main_link_back_upper_right.part }
  }
  { Part
    { Name screw_post_to_main_link_back_lower_left }
    { URL screw_post_to_main_link_back_lower_left.part }
  }
  { Part
    { Name screw_post_to_main_link_back_lower_right }
    { URL screw_post_to_main_link_back_lower_right.part }
  }

#parts of the former central_subassembly
  { Part
    { Name rear_plate_36 }
    { URL rear_plate_36.part }
  }
  { Part
#This is the linkage arm on the front
    { Name main_linkage_arm_6a_scaled_unpositioned_front }
    { URL main_linkage_arm_6a_scaled_unpositioned_front.part }
  }
  { Part
#This is the linkage arm on the back
    { Name main_linkage_arm_6a_scaled_unpositioned_back }
    { URL main_linkage_arm_6a_scaled_unpositioned_back.part }
  }
#These are the screws holding them together
  { Part
    { Name screw_main_link_to_rear_plate_front_left_inner }
    { URL screw_main_link_to_rear_plate_front_left_inner.part }
  }
  { Part
    { Name screw_main_link_to_rear_plate_front_left_outer }
    { URL screw_main_link_to_rear_plate_front_left_outer.part }
  }
  { Part
    { Name screw_main_link_to_rear_plate_front_right_inner }
    { URL screw_main_link_to_rear_plate_front_right_inner.part }
  }
  { Part
    { Name screw_main_link_to_rear_plate_front_right_outer }
    { URL screw_main_link_to_rear_plate_front_right_outer.part }
  }
  { Part
    { Name screw_main_link_to_rear_plate_back_left_inner }
    { URL screw_main_link_to_rear_plate_back_left_inner.part }
  }
  { Part
    { Name screw_main_link_to_rear_plate_back_left_outer }
    { URL screw_main_link_to_rear_plate_back_left_outer.part }
  }
  { Part
    { Name screw_main_link_to_rear_plate_back_right_inner }
    { URL screw_main_link_to_rear_plate_back_right_inner.part }
  }
  { Part
    { Name screw_main_link_to_rear_plate_back_right_outer }
    { URL screw_main_link_to_rear_plate_back_right_outer.part }
  }
	
  { Part
#This screw is in the lower lefthand corner holding together the flange_pt201_11 with the main_linkage_arm6 in the front
    { Name screw_main_link_to_flange201_front_lower_left }
    { URL screw_main_link_to_flange201_front_lower_left.part }
  }
  { Part
#This screw is in the upper righthand corner holding together the flange_pt201_11 with the main_linkage_arm6 in the front
    { Name screw_main_link_to_flange201_front_upper_right }
    { URL screw_main_link_to_flange201_front_upper_right.part }
  }
	
}