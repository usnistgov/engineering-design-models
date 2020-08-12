
(eplan
 header (header
         file_identification (file_identification
                 file_name "coupon/e_move_plan1"
                 date   "19920130000000"
                 author (Tom Kramer "Room B-124, Bldg. 220"
                         NIST   "Gaithersburg, MD 20899")
                 organization (Robot Systems Division
                         NIST   "Gaithersburg, MD 20899")
                 step_version "STEP Version 1.0"
                 preprocessor_version "No preprocessor - handwritten"
                 originating_system "No system")
         file_description "This is an adacs e_move process plan for coupon"
         imp_level "1.0")
 data   (data
         10     (10
                 type   chamfer_face_open_elementary_line
                 depth  0.01
                 chamfer_path (#606)
                 normal_spec nil
                 chamfer_start_out nil
                 chamfer_start_in nil
                 chamfer_end_in nil
                 chamfer_end_out nil)
         20     (20
                 type   chamfer_face_open_elementary_arc
                 depth  0.01
                 chamfer_path (#630)
                 normal_spec nil
                 chamfer_start_out nil
                 chamfer_start_in nil
                 chamfer_end_in nil
                 chamfer_end_out nil)
         101    (101
                 type   adacs_e_move_startup
                 sequence_number 1)
         102    (102
                 type   fixture_part
                 sequence_number 2
                 part_id "COUPON_BLANK_A"
                 fixture "VISE1"
                 get_from "IN THE TRAY")
         103    (103
                 type   chamfer_feature
                 sequence_number 3
                 chamfer_to_make (ref 10)
                 spindle_speed 50000
                 chamfer_feature_plan_id nil)
         104    (104
                 type   chamfer_feature
                 sequence_number 4
                 chamfer_to_make (ref 20)
                 spindle_speed 50000
                 chamfer_feature_plan_id nil)
         105    (105
                 type   unfixture_part
                 sequence_number 5
                 part_id "COUPON_BLANK_A"
                 put_at "BACK ON TRAY")
         106    (106
                 type   adacs_e_move_shutdown
                 sequence_number 6)
         107    (107
                 type   adacs_plan
                 identity "e_move_plan1"
                 header "MAKES TWO CHAMFERS"
                 control_level e_move
                 steps  ((ref 101) (ref 102)
                         (ref 103) (ref 104)
                         (ref 105) (ref 106)))))
