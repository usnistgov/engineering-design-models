(modeller start)
(load "plisp/load_functions.l")

-- These lines written automatically commented out and replaced by p_block
-- (define workpiece body)
-- (workpiece receive "olps_workpiece_in.xmt_txt")
-- (translate_body 0.0 0.0 0.0)

(define workpiece p_block)
(workpiece x 6.25; y 2.975; z 0.735; point '(3.125 1.4875 0.0); create)

(init_graphics)
(make_other_pocket 'other_pocket_with_islands1 '(
(1.989 2.9)
(0.877 2.004)
(0.877 0.996)
(1.989 0.1)
(4.261 0.1)
(5.373 0.996)
(5.373 2.004)
(4.261 2.9)) 0.635 '(
2.6196
1.0533
1.0533
2.6196
2.6196
1.0533
1.0533
2.6196) 0.1)
(make_other_pocket 'other_pocket_with_islands1_isle_1 '(
(3.125 0.5)
(3.229 0.788)
(3.645 1.132)
(3.605 0.716)
(3.845 0.94)
(4.029 0.764)
(3.813 0.46)
(5.453 1.036)
(4.213 2.5)
(3.717 2.596)
(3.925 2.46)
(3.821 1.948)
(3.413 1.86)
(3.309 2.7)
(3.221 2.38)
(3.029 2.38)
(2.941 2.7)
(2.837 1.86)
(2.429 1.948)
(2.325 2.46)
(2.533 2.596)
(2.037 2.5)
(0.797 1.036)
(2.437 0.46)
(2.221 0.764)
(2.405 0.94)
(2.645 0.716)
(2.605 1.132)
(3.021 0.788)) 0.0 '(
0.004
0.8603
0.126
0.004
0.1347
0.1473
0.004
0.9869
1.3774
0.004
0.3363
0.3192
0.1908
0.016
0.12596
0.12596
0.016
0.1908
0.3192
0.3363
0.004
1.3774
0.9869
0.004
0.1473
0.1347
0.004
0.126
0.8603) 0.1)
(other_pocket_with_islands1_isle_1 direction '(0.0 0.0 0.635))
(other_pocket_with_islands1_isle_1 move)
(other_pocket_with_islands1 subtract 'other_pocket_with_islands1_isle_1)
(workpiece subtract 'other_pocket_with_islands1)
(graphics clear)
(graphics sketch 'workpiece)
(workpiece merge)
(translate_body 0.0 0.0 0.0)
(workpiece transmit "olps_workpiece_out")
(graphics clear)
(graphics sketch 'workpiece)
(graphics ar)
-- (quit)
