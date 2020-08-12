-- Calculations for points
-- distance of circle center from front of block is 
-- (17/16 - 3/8) = 11/16 = 0.6875
-- distance to tangent point from front of block is 
-- (11/16 - 3/16) = 8/16 = 0.5
-- long side of tangent triangle is
-- 8/16 - 3/16 = 5/16 = 0.3125
-- short side of tangent triangle is
-- (setq d (quotient 0.3125 (sqrt 3.0))) = 0.180421959122
-- hypotenuse of tangent triangle is
-- (times 2.0 0.180421959122) = 0.360843918244
-- distance to tangent point from center line is
-- (plus 0.5 0.180421959122) = 0.680421959122
-- distance to circle center from center line is
-- (setq x (difference (plus 0.5 d) (times 0.1875 (sqrt 3.0))))
-- = 0.355662432703
-- distance from point at end of flat to center line is
-- (difference x (sqrt (difference (times 0.375 0.375)
--                                 (times 0.3125 0.3125)))) = 0.148373383305
-- length of flat is (times 2.0 0.148373383305) = 0.29674676661

-- subtended angle
-- (plus 30.0 90.0 (quotient (times (acos (quotient 0.3125 0.375)) 180.0) pi))
-- = 153.557309761921

-- Start the modeller.
(modeller start)

-- intialize graphics
(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)

(define coupon p_block)
(coupon point '(4 0.875 0); direction '(0 0 1))
(coupon x 8; y 1.75; z 0.0625; create)
(graphics sketch 'coupon)
(graphics ar)

(define cutout p_profile)
(cutout coordinate '((0.5 0 0) (0.5 0.1875 0) (0.680421959122 0.5 0)
                     (0.148373383305 1.0 0) (-0.148373383305 1.0 0)
                     (-0.680421959122 0.5 0) (-0.5 0.1875 0) (-0.5 0 0)
                     (0.5 0 0)))
(cutout create)
(graphics sketch 'cutout)
(cutout sweep '(0 0 0.0625))
(define cyl1 p_cylinder)
(cyl1 point '(0.355662432703 0.6875 0); direction '(0 0 1); radius 0.375)
(cyl1 height 0.0625; create)
(graphics sketch 'cyl1)
(define cyl2 p_cylinder)
(cyl2 point '(-0.355662432703 0.6875 0); direction '(0 0 1); radius 0.375)
(cyl2 height 0.0625; create)
(graphics sketch 'cyl2)
(cutout unite 'cyl1)
(cutout unite 'cyl2)
(cutout merge)
(graphics clear)
(graphics sketch 'cutout)

(define c1 body)
(define c2 body)
(define c3 body)
(define c4 body)

(c1 replicate 'cutout)
(c2 replicate 'cutout)
(c3 replicate 'cutout)
(c4 replicate 'cutout)

(c1 direction '(1 0 0); move)
(c2 direction '(3 0 0); move)
(c3 direction '(5 0 0); move)
(c4 direction '(7 0 0); move)

(coupon subtract 'c1)
(coupon subtract 'c2)
(coupon subtract 'c3)
(coupon subtract 'c4)

(graphics clear)
(graphics sketch 'coupon)
(graphics ar)
(coupon transmit "coupon")