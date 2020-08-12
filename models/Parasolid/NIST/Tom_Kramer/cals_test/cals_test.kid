(modeller start)
(define cals_test p_profile)
(cals_test coordinate '((0.375 0 0.3765) (1.621 0 0.3765) (1.621 0 0.625)
                        (1.227 0 0.625) (1.227 0 0.78125) (0.8685 0 0.78125)
                        (0.8685 0 0.71875) (0.6185 0 0.71875) (0.6185 0 1.12)
                        (0.241 0 1.12) (0.241 0 2.0) (0 0 2.0)
                        (0 0 0.8765) (0.375 0 0.8765) (0.375 0 0.3765)))
(cals_test create)

(graphics open_device 'sun3)
(graphics view_direction '(-0.3 1 -0.2))
(graphics sketch 'cals_test)
(graphics ar)

(cals_test point '(0 0 0); direction '(1 0 0); angle 360)
(cals_test swing)
(graphics sketch 'cals_test)
(graphics ar)

(define e1 edge) -- edge to get 0.0625 round
(define e2 edge) -- edge to get 0.12 fillet on outside
(define e3 edge) -- edge to get 0.12 fillet on inside
(define e4 edge) -- larger radius edge to get 0.09 fillet
(define e5 edge) -- smaller radius edge to get 0.09 fillet
(define e6 edge) -- edge to get 30 degree chamfer with larger x
(define e7 edge) -- edge to get 30 degree chamfer with smaller x

(e1 pick_from 'cals_test)
(e2 pick_from 'cals_test)
(e3 pick_from 'cals_test)
(e4 pick_from 'cals_test)
(e5 pick_from 'cals_test)
(e6 pick_from 'cals_test)
(e7 pick_from 'cals_test)

(e1 pick_using '(e1 clash '(0.241 0 2.0)))
(e2 pick_using '(e2 clash '(0.241 0 1.12)))
(e3 pick_using '(e3 clash '(0.375 0 0.8765)))
(e4 pick_using '(e4 clash '(0.6185 0 0.71875)))
(e5 pick_using '(e5 clash '(1.227 0 0.625)))
(e6 pick_using '(e6 clash '(1.227 0 0.78125)))
(e7 pick_using '(e7 clash '(0.8685 0 0.78125)))

(define f1 p_fillet)
(f1 r1 0.0625)
(f1 apply 'e1)

(define f2 p_fillet)
(f2 r1 0.12)
(f2 apply 'e2)
(f2 apply 'e3)

(define f3 p_fillet)
(f3 r1 0.09)
(f3 apply 'e4)
(f3 apply 'e5)

-- raised part for thread is 0.3585 wide before chamfer
-- chamfer part of this must be 0.023 to leave 0.3125
-- other side of chamfer is
-- (times 0.023 (sqrt 3.0)) = 0.039837168574

(define c1 p_chamfer)
(c1 r1 0.039837168574; r2 0.023)
(c1 apply 'e6)

(define c2 p_chamfer)
(c2 r1 0.023; r2 0.039837168574)
(c2 apply 'e7)

(cals_test blend_fix)
(graphics clear)
(graphics sketch 'cals_test)

(define cyl1 p_cylinder)
(define cyl2 p_cylinder)
(define cyl3 p_cylinder)
(define cyl4 p_cylinder)
(define cyl5 p_cylinder)
(define cyl6 p_cylinder)
(define cyl7 p_cylinder)
(define cyl8 p_cylinder)

(cyl1 direction '(1 0 0); point '(0 0 0); radius 0.156; height 0.241)
(cyl1 create)
(cyl2 replicate 'cyl1)
(cyl3 replicate 'cyl1)
(cyl4 replicate 'cyl1)
(cyl5 replicate 'cyl1)
(cyl6 replicate 'cyl1)
(cyl7 replicate 'cyl1)
(cyl8 replicate 'cyl1)

-- (quotient 1.75 (sqrt 2.0)) = 1.237436867076
(cyl1 direction '(0 1.75 0); move)
(cyl2 direction '(0 1.237436867076 1.237436867076); move)
(cyl3 direction '(0 0 1.75); move)
(cyl4 direction '(0 -1.237436867076 1.237436867076); move)
(cyl5 direction '(0 -1.75 0); move)
(cyl6 direction '(0 -1.237436867076 -1.237436867076); move)
(cyl7 direction '(0 0 -1.75); move)
(cyl8 direction '(0 1.237436867076 -1.237436867076); move)

(cals_test subtract 'cyl1)
(cals_test subtract 'cyl2)
(cals_test subtract 'cyl3)
(cals_test subtract 'cyl4)
(cals_test subtract 'cyl5)
(cals_test subtract 'cyl6)
(cals_test subtract 'cyl7)
(cals_test subtract 'cyl8)

(cals_test transmit "cals_test")

-- for a less confusing picture
-- (graphics clear)
-- (graphics hidden 'cals_test)

-- for a back view
-- (graphics view_direction '(2 1 -0.2))
-- (graphics clear)
-- (graphics hidden 'cals_test)
