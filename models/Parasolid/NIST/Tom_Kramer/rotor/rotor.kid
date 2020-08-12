-- This file is a kid command file to build a turbine rotor
-- The procedure is:
-- 1  Define a box as a place to start.
-- 2  Create a b-spline to represent the profile of a groove through
--    the rotor.
-- 3  Scribe the b-spline on the box.
-- 4  Sweep the b-spline to make a solid.
-- 5  Subtract the box to get a solid (negative) groove.
-- 6  Make a profile of the rotor cross-section.
-- 7  Swing the profile to make the rotor.
-- 8  Blend edges of the rotor. The cross section has been adjusted
--    so that five of the blends are made by subtacting tori.
-- 9  Position the groove on the rotor.
-- 10 Make 4 copies of the groove rotated around the rotor.
-- 11 Subtract the copies of the groove from the rotor.
-- 12 Intersect a skewed wedge with the rotor to make an 18 degree sector.
-- 13 Double the sector four times to get a 288 degree sector.
-- 14 Add in the last 72 degrees to make the whole rotor.

-- An alternative to steps 10 - 14 would be to subtract 60 copies of 
-- the groove from the rotor, but that method takes much longer.

-- This version does not put scallops on the rotor or put holes in it.
-- It would be easy to add them later.

-- Start the modeller.
(modeller start)

-- intialize graphics
(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)

-- 1. Make a box whose top face, face1, is on the xy-plane.
-- Sketch the box and pick face1.
(setq box1_tag (crbxso '(0 0 -1) '(0 0 1) 2 2 1))
(define box1 body)
(box1 tag box1_tag)
(graphics sketch 'box1)
(graphics ar)
(define face1 face)
(face1 pick_from 'box1)
(face1 pick_using '(face1 clash '(0 0 0)))
(face1 enquire)

-- Make a copy of the box to subtract later.
(define box2 body)
(box2 replicate 'box1)

-- 2. Make a spline, c2, which is the cross-section of the groove
-- with an imaginary top in the same plane as face1.
(setq tag_c2 
  (crbspc 3 3
      '((0 0 0) (0.09 0 0) (0.13 -0.02 0) (0.17 -0.01 0) (0.22 0.03 0)
        (0.22 0.1 0) (0.18 0.17 0) (0.08 0.25 0) (0.23 0.3 0) (0.23 0.4 0)
        (0.23 0.5 0) (-0.23 0.5 0)
        (-0.23 0.4 0) (-0.23 0.3 0) (-0.08 0.25 0) (-0.18 0.17 0) (-0.22 0.1 0)
        (-0.22 0.03 0) (-0.17 -0.01 0) (-0.13 -0.02 0) (-0.09 0 0))
      '( 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21) '(PAPRPE)))
(define c2 curve)
(c2 tag tag_c2)

-- 3. Make a face, face2, by scribing the spline on face1.
-- Get a point on the spline by using enpopc.
-- (enpopc (c2 tag) 0.0) = (( 0.045  0.0  0.0 ))
(setq info2 (scribe (face1 tag) tag_c2 '(0.045 0.0 0.0) '(0.045 0.0 0.0)))
(define face2 face)
(face2 tag (caadr info2))
(graphics clear)
(graphics sketch 'face2)

-- 4. Sweep face2 into a solid.
-- The swept solid is automatically unioned with box to change box.
(sweent (face2 tag) '(0 0 2))
(graphics clear)
(graphics sketch 'box1)

-- 5. Get rid of the original box
(box1 subtract 'box2)
(define groove body)
(groove replicate 'box1)
(graphics clear)
(graphics sketch 'groove)
(graphics ar)
(graphics clear)
(graphics view_direction '(0 0 -1))
(graphics sketch 'groove)
(graphics ar)
(groove transmit "groove")

-- 6. Define the rotor profile. The commented-out profile would be
-- preferred, except that it doesn't blend well at five edges, so
-- a profile with those five edges filled is constructed.

-- Some portions of the profile are to be blended away entirely.
-- The blend_distance function determines where to locate a corner to do this.
-- (blend_distance 0.75 0.1375) = 0.194575962148
-- (plus 0.45  0.194575962148) = 0.644575962148
-- (blend_distance 0.25 0.1) = 0.075
-- (difference 1.25 0.075) = 1.175
-- (blend_distance 0.1 0.025) = 0.028347335476
-- (plus 2.25 0.028347335476) = 2.278347335476

-- The following is not used because the blends are too slow (over an
-- hour) at edges 1, 6, 12, 14, and 15.
-- (rotor4 coordinate '((0 0 0.1875) (0 0 -0.1875) (0.45 0 -0.1875)
--    (0.644575962148 0 -0.05) (1.45 0 -0.05) (1.45 0 -0.45) (1.15 0 -0.45)
--    (1.15 0 -0.5) (1.5 0 -0.5) (1.5 0 -0.05) (2.25 0 -0.05)
--    (2.278347335476 0 -0.025) (3.6 0 -0.025) (3.6 0 -0.325)
--    (3.64 0 -0.325) (4.05 0 -0.5) (4.06 0 -0.6) (4.11 0 -0.6)
--    (4.05 0 0.55) (4.0 0 0.55) (4.0 0 0.325) (3.6 0 0.325)
--    (3.6 0 0.025) (2.278347335476 0 0.025) (2.25 0 0.05) (1.35 0 0.05)
--    (1.35 0 0.15) (1.25 0 0.15) (1.175 0 0.05) (0.644575962148 0 0.05)
--    (0.45 0 0.1875) (0 0 0.1875)))

-- Calculate where to fill the five edges of the profile above (there are
-- two pairs, so only three calculations are needed). The blend_tangent
-- function does the work.
-- (blend_tangent 0.75 0.1375) = 0.43283224233
-- (plus 0.45  0.43283224233) = 0.88283224233
-- (blend_tangent 0.25 0.1) = 0.2
-- (difference 1.25 0.2) = 1.05
-- (blend_tangent 0.1 0.025) = 0.066143782777
-- (plus 2.25 0.066143782777) = 2.316143782777

(define rotor4 p_profile)
(rotor4 coordinate '((0 0 0.1875) (0 0 -0.1875) (0.45 0 -0.1875)
    (0.88283224233 0 -0.05) (1.45 0 -0.05) (1.45 0 -0.45) (1.15 0 -0.45)
    (1.15 0 -0.5) (1.5 0 -0.5) (1.5 0 -0.05) (2.25 0 -0.05)
    (2.316143782777 0 -0.025) (3.6 0 -0.025) (3.6 0 -0.325)
    (3.64 0 -0.325) (4.05 0 -0.5) (4.06 0 -0.6) (4.11 0 -0.6)
    (4.05 0 0.55) (4.0 0 0.55) (4.0 0 0.325) (3.6 0 0.325)
    (3.6 0 0.025) (2.316143782777 0 0.025) (2.25 0 0.05) (1.35 0 0.05)
    (1.35 0 0.15) (1.25 0 0.15) (1.05 0 0.05) (0.88283224233 0 0.05)
    (0.45 0 0.1875) (0 0 0.1875)))
(rotor4 create)
(graphics clear)
(graphics sketch 'rotor4)
(graphics ar)

-- 7. Swing the profile to make the rotor
(rotor4 point '(-5.3 0 0); direction '(0 0 1); angle 360; swing)
(graphics clear)
(graphics hidden 'rotor4)
(graphics ar)

-- 8. Blend fifteen edges of the rotor. Ten are blended by fillets.
-- Five are blended by subtracting tori.
-- EDGES WHICH BLEND SLOWLY USING FILLETS ARE COMMENTED OUT
(define all_edges edge)
(all_edges pick_from 'rotor4)
-- (define e1 edge)
(define e2 edge)
(define e3 edge)
(define e4 edge)
(define e5 edge)
-- (define e6 edge)
(define e7 edge)
(define e8 edge)
(define e9 edge)
(define e10 edge)
(define e11 edge)
-- (define e12 edge)
(define e13 edge)
-- (define e14 edge)
-- (define e15 edge)
-- (e1 replicate 'all_edges)
(e2 replicate 'all_edges)
(e3 replicate 'all_edges)
(e4 replicate 'all_edges)
(e5 replicate 'all_edges)
-- (e6 replicate 'all_edges)
(e7 replicate 'all_edges)
(e8 replicate 'all_edges)
(e9 replicate 'all_edges)
(e10 replicate 'all_edges)
(e11 replicate 'all_edges)
-- (e12 replicate 'all_edges)
(e13 replicate 'all_edges)
-- (e14 replicate 'all_edges)
-- (e15 replicate 'all_edges)

-- (e1 pick_using '(e1 clash '(0.644575962148 0 -0.05)))
(e2 pick_using '(e2 clash '(1.45 0 -0.05)))
(e3 pick_using '(e3 clash '(1.45 0 -0.45)))
(e4 pick_using '(e4 clash '(1.5 0 -0.5)))
(e5 pick_using '(e5 clash '(1.5 0 -0.05)))
-- (e6 pick_using '(e6 clash '(2.278347335476 0 -0.025)))
(e7 pick_using '(e7 clash '(3.6 0 -0.025)))
(e8 pick_using '(e8 clash '(3.64 0 -0.325)))
(e9 pick_using '(e9 clash '(4.05 0 -0.5)))
(e10 pick_using '(e10 clash '(4.0 0 0.325)))
(e11 pick_using '(e11 clash '(3.6 0 0.025)))
-- (e12 pick_using '(e12 clash '(2.278347335476 0 0.025)))
(e13 pick_using '(e13 clash '(1.35 0 0.05)))
-- (e14 pick_using '(e14 clash '(1.175 0 0.05) 0 0.05)))
-- (e15 pick_using '(e15 clash '(0.644575962148 0 0.05)))

-- (define f1 p_fillet)
(define f2 p_fillet)
(define f3 p_fillet)
(define f4 p_fillet)
(define f5 p_fillet)
-- (define f6 p_fillet)
(define f7 p_fillet)
(define f8 p_fillet)
(define f9 p_fillet)
(define f10 p_fillet)
(define f11 p_fillet)
-- (define f12 p_fillet)
(define f13 p_fillet)
-- (define f14 p_fillet)
-- (define f15 p_fillet)

-- (f1 r1 0.75)
(f2 r1 0.1)
(f3 r1 0.02)
(f4 r1 0.03)
(f5 r1 0.03)
-- (f6 r1 0.1)
(f7 r1 0.3)
(f8 r1 0.03)
(f9 r1 0.08)
(f10 r1 0.08)
(f11 r1 0.3)
-- (f12 r1 0.1)
(f13 r1 0.02)
-- (f14 r1 0.25)
-- (f15 r1 0.75)

-- (f1 apply 'e1)
(f2 apply 'e2)
(f3 apply 'e3)
(f4 apply 'e4)
(f5 apply 'e5)
-- (f6 apply 'e6)
(f7 apply 'e7)
(f8 apply 'e8)
(f9 apply 'e9)
(f10 apply 'e10)
(f11 apply 'e11)
-- (f12 apply 'e12)
(f13 apply 'e13)
-- (f14 apply 'e14)
-- (f15 apply 'e15)

(rotor4 blend_fix)

-- Now blend the other five edges with tori.
(define t1 p_torus)
(t1 minrad 0.75; majrad (plus 5.3 0.88283224233); point '(-5.3 0 -0.8))
(t1 direction '(0 0 1); create)
-- This torus must have some material removed before subtracting so as
-- not to gouge other parts of the rotor
(define cyl1 p_cylinder)
(cyl1 point '(-5.3 0 -1.75); direction '(0 0 1))
(cyl1  radius (plus 5.3 0.88283224233); height 2.0; create)
(t1 intersect 'cyl1)

(define t6 p_torus)
(t6 minrad 0.1; majrad (plus 5.3 2.278347335476); point '(-5.3 0 -0.125))
(t6 direction '(0 0 1); create)

(define t12 p_torus)
(t12 minrad 0.1; majrad (plus 5.3 2.278347335476); point '(-5.3 0 0.125))
(t12 direction '(0 0 1); create)

(define t14 p_torus)
(t14 minrad 0.25; majrad (plus 5.3 1.05); point '(-5.3 0 0.3))
(t14 direction '(0 0 1); create)

(define t15 p_torus)
(t15 minrad 0.75; majrad (plus 5.3 0.88283224233); point '(-5.3 0 0.8))
(t15 direction '(0 0 1); create)
-- This torus must have some material removed before subtracting so as
-- not to gouge other parts of the rotor
(define cyl2 p_cylinder)
(cyl2 point '(-5.3 0 -0.25); direction '(0 0 1))
(cyl2  radius (plus 5.3 0.88283224233); height 2.0; create)
(t15 intersect 'cyl2)

(rotor4 subtract 't1)
(rotor4 subtract 't6)
(rotor4 subtract 't12)
(rotor4 subtract 't14)
(rotor4 subtract 't15)

(rotor4 transmit "plain_rotor")
-- If the rotor and groove have been saved by transmit, they can
-- be recreated as follows.
-- (define rotor4 body)
-- (rotor4 receive "plain_rotor")
-- (define groove body)
-- (groove receive "groove")

-- 9  position the groove on the rotor
(groove point '(0 0 0); direction '(0 0 -1); angle 90; rotate)
(groove direction '(3.67 0 -1); move)
(groove point '(8.97 0 0); direction '(-1 0 0); angle 20; rotate)

-- 10 make 4 copies of the groove rotated around the rotor (6 degrees)

(define g1 body)
(define g2 body)
(define g3 body)
(define g4 body)

(g1 replicate 'groove)
(g2 replicate 'groove)
(g3 replicate 'groove)
(g4 replicate 'groove)

(g2 point '(-5.3 0 0); direction '(0 0 1); angle  6; rotate)
(g3 point '(-5.3 0 0); direction '(0 0 1); angle 12; rotate)
(g4 point '(-5.3 0 0); direction '(0 0 1); angle 18; rotate)

-- 11 subtract the copies of the groove from the rotor
(rotor4 subtract 'g1)
(rotor4 subtract 'g2)
(rotor4 subtract 'g3)
(rotor4 subtract 'g4)

(rotor4 transmit "rotor4")
(graphics clear)
(graphics hidden 'rotor4)

-- The above boolean subtractions take a very long time on a Sun3
-- (800 seconds for the first and 1400 seconds for the fourth)
-- This runs 15 to 20 times faster on a Sun4 (44 seconds for the
-- first and 110 seconds for the fourth)

-- Completing the rotor by making a section and unioning sections.

-- 12 Intersect a skewed wedge with the rotor to make an 18 degree sector.

-- First make a section with 18 degrees (pi/10 radians) by intersecting
-- the rotor with a skewed wedge. The pie_wedge must be skewed because an
-- unskewed wedge doesn't fit through the grooves.
-- The amount of skewing is 20 degress (pi/9 radians) - same as groove.
-- (tan (quotient pi 9.0)) = 0.363970234266
-- Relocate the section so the center is at the origin.

(define wedge p_profile)
(wedge coordinate '((5  -0.363970234266 -1) (10 -0.363970234266 -1)
                    (10  0.363970234266  1) (5   0.363970234266  1)
                    (5  -0.363970234266 -1)))
(wedge create)
(wedge point '(0 0 0); direction '(0 0 1); angle 18; swing)
(define rotor_all body)
(rotor_all replicate 'rotor4)
(rotor_all direction '(5.3 0 0); move)
(rotor_all intersect 'wedge)

-- 13. Double the angular size of the body 4 times to 288 degrees.
(define add18 body)
(add18 replicate 'rotor_all)
(add18 point '(0 0 0); direction '(0 0 1); angle 18; rotate)
(rotor_all unite 'add18)
(rotor_all merge)
(define add36 body)
(add36 replicate 'rotor_all)
(add36 point '(0 0 0); direction '(0 0 1); angle 36; rotate)
(rotor_all unite 'add36)
(rotor_all merge)
(define last72 body)
(last72 replicate 'rotor_all)
(define add72 body)
(add72 replicate 'rotor_all)
(add72 point '(0 0 0); direction '(0 0 1); angle 72; rotate)
(rotor_all unite 'add72)
(rotor_all merge)
(define add144 body)
(add144 replicate 'rotor_all)
(add144 point '(0 0 0); direction '(0 0 1); angle 144; rotate)
(rotor_all unite 'add144)
(rotor_all merge)

-- 14 Add in the last 72 degrees to make the whole rotor.
(last72 point '(0 0 0); direction '(0 0 1); angle 288; rotate)
(rotor_all unite 'last72)
(rotor_all merge)
(rotor_all transmit "rotor_all")
