-- This kid command file creates a solid letter G six units on each side.
-- The projected direction of the G is parallel to the z-axis.
-- The base of the G is on the xy-plane.

(modeller start)
(load "plisp/load_functions.l")
(make_other_pocket 'gee 
'((0 0) (6 0) (6 3) (4 3) (4 2) (5 2) (5 1) (1 1)
  (1 5) (5 5) (5 4) (6 4) (6 6) (0 6)) 0
'(  1     1    nil   nil   nil   nil   nil   nil
   nil   nil   nil   nil    1     1  ) 6)
(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)
(graphics sketch 'gee)
(graphics ar)
-- (graphics clear)
-- (graphics hidden 'gee)
-- (gee transmit "gee")
-- (quit)
