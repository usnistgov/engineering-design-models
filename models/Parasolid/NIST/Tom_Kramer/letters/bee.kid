-- This kid command file creates a solid letter B six units on each side.
-- The projected direction of the B is parallel to the z-axis.
-- The base of the B is on the xy-plane.
-- The queer y coordinates in the middle of the B are to avoid non-manifold
-- geometry.

(modeller start)
(load "plisp/load_functions.l")
(make_other_pocket 'bee
'((0 0) (6 0) (6 3.02) (0 3.02)) 0
'( nil    1     1    nil ) 6)
(make_other_pocket 'top
'((0 2.98) (6 2.98) (6 6) (0 6)) 0
'( nil    1     1    nil ) 6)
(bee unite 'top)
(bee merge)
(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)
(graphics sketch 'bee)
(graphics ar)
(make_other_pocket 'top_hole
'((1 3.5) (5 3.5) (5 5) (1 5)) 0
'(  nil     1      0.5   nil ) 6)
(make_other_pocket 'bottom_hole
'((1 1) (5 1) (5 2.5) (1 2.5)) 0
'( nil   0.5    1       nil  ) 6)
(bee subtract 'top_hole)
(bee subtract 'bottom_hole)
(bee merge)
(graphics clear)
(graphics sketch 'bee)
-- (graphics clear)
-- (graphics hidden 'bee)
-- (bee transmit "bee")
-- (quit)
