-- This file is a kid command file to demonstrate a problem in fixing
-- a blend. The blend is a fillet which entirely blends away a
-- conical surface plus part of a planar surface. 
-- I am running on a Sun3.
-- The blend_fix operation takes almost 12 minutes to run. The 
-- information on the screen after the (rotor blend_fix) command is:
-- BLNFIX time: C 711.56; Total LISP: 51.65; Total C: 722.89
-- When I fixed the same one blend on a solid of rotation with 32 edges
-- it took over an hour.
-- The (rotor check) command below also took almost 12 minutes.
-- The new surface is found to be a blend surface rather than a
-- torus. Why is this? It should be toroidal.

(modeller start)
(define rotor p_profile)
(rotor coordinate '((0 0 0) (2 0 0) (2 0 0.05) (0.644575962148 0 0.05) 
                    (0.45 0 0.1875) (0 0 0.1875) (0 0 0)))
(rotor create)
(rotor point '(-5.3 0 0); direction '(0 0 1); angle 360; swing)
(define e1 edge)
(e1 pick_from 'rotor)
(e1 pick_using '(e1 clash '(0.644575962148 0 0.05)))
(define f1 p_fillet)
(f1 r1 0.75)
(f1 apply 'e1)
(e1 blend_check)
(rotor blend_fix)
(rotor check)

-- If I reduce the radius of the fillet so that the conical face is
-- not entirely blended away, it takes just as long, so this seems
-- to be a more general problem than I thought. I did this by reducing
-- the radius 0.75 to 0.74 in the commands above, but left the rest of
-- the commands unchanged.

-- I also tried the following, as the simplest possible test of
-- blending a circular edge between a cone and a plane.
-- The blend_fix for block1 below was much faster:
-- BLNFIX time: C 12.85; Total LISP: 176.13; Total C: 2140.09
-- However, the new surface is a blend again, not a torus.
(define cone1 p_cone)
(cone1 point '(0 0 0); direction '(0 0 1); lrad 2; urad 0; height 3; create)
(define block1 p_block)
(block1 point '(0 0 -1); direction '(0 0 1); x 5; y 5; z 1; create)
(block1 unite 'cone1)
(define e2 edge)
(e2 pick_from 'block1)
(e2 pick_using '(e2 clash '(2 0 0)))
(define f2 p_fillet)
(f2 r1 0.5)
(f2 apply 'e2)
(e2 blend_check)
(block1 blend_fix)
