-- This kid command file creates a solid letter E six units on each side.
-- The projected direction of the E is parallel to the z-axis.
-- The base of the E is on the xy-plane.

(modeller start)
(load "plisp/load_functions.l")
(make_other_pocket 'eee 
'((0 0) (6 0) (6 1) (1 1) (1 2.5) (4 2.5) (4 3.5) (1 3.5)
  (1 5) (6 5) (6 6) (0 6)) 0
'( nil   nil   nil   nil   nil   nil   nil   nil
   nil   nil   nil   nil ) 6)
(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)
(graphics sketch 'eee)
(graphics ar)
-- (graphics clear)
-- (graphics hidden 'eee)
-- (eee transmit "eee")
-- (quit)
