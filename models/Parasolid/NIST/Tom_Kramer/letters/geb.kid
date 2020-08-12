-- This kid command file creates a solid which is the intersection
-- of the letters GEB.
-- Parallel to the z-axis the solid projects G
-- Parallel to the y-axis the solid projects E
-- Parallel to the x-axis the solid projects B

(modeller start)
(load "plisp/load_functions.l")
(define geb body)
(geb receive "gee")
(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)
(graphics sketch 'geb)
(graphics ar)
(define eee body)
(eee receive "eee")
(eee point '(3 3 3); direction '(1 0 0); angle 90)
-- The rotation puts the face of the E in the xz plane
(eee rotate)
(graphics sketch 'eee)
(geb intersect 'eee)
(geb merge)
(graphics clear)
(graphics hidden 'geb)
(define bee body)
(bee receive "bee")
(bee point '(3 3 3); direction '(0 0 1); angle 90)
(bee rotate)
(bee point '(3 3 3); direction '(0 1 0); angle 90)
(bee rotate)
(graphics sketch 'bee)
(geb intersect 'bee)
(geb merge)
(graphics clear)
(graphics hidden 'geb)
-- (graphics clear)
-- (graphics view_direction '(0 1  0)) for E
-- (graphics view_direction '(0 0 -1)) for G
-- (graphics view_direction '(-1 0 0)) for B
-- (graphics hidden 'geb)
-- (geb transmit "geb")
-- (quit)
