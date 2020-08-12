-- This kid command file creates a solid letter L six units on each side.
-- The projected direction of the L is parallel to the z-axis.
-- The base of the L is on the xy-plane.

(modeller start)
(load "plisp/load_functions.l")
(make_other_pocket 'ell
'((0 0) (6 0) (6 1) (1 1) (1 6) (0 6)) 0
'( nil   nil   nil   nil   nil   nil ) 6)
(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)
(graphics sketch 'ell)
(graphics ar)
-- (graphics clear)
-- (graphics hidden 'ell)
-- (ell transmit "ell")
-- (quit)
