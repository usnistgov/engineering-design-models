-- This kid command file creates a solid letter M six units on each side.
-- The projected direction of the M is parallel to the z-axis.
-- The base of the M is on the xy-plane. The included angle is 120 degrees.

(modeller start)
(load "plisp/load_functions.l")
-- (difference 6 (sqrt 3)) = 4.267949192431
-- (difference 6 (sqrt 3) (quotient 2 (sqrt 3))) = 3.113248654052
(make_other_pocket 'emm
'((0 0) (1 0) (1 4.267949192431) (3 3.113248654052) (5 4.267949192431)
  (5 0) (6 0) (6 6) (3 4.267949192431) (0 6)) 0
'( nil   nil   nil                   nil                nil
   nil   nil   nil    nil               nil) 6)
(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)
(graphics sketch 'emm)
(graphics ar)
-- (graphics clear)
-- (graphics hidden 'emm)
-- (emm transmit "emm")
-- (quit)
