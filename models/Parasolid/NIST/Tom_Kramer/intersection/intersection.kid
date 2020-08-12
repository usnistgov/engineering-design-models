-- intersect cone with plane parallel to axis to make hyperbola

(modeller start)
(load "plisp/load_functions.l")
(define workpiece p_block)
(workpiece x 10; y 6; z 3)
(workpiece point '(-5 0 0))
(workpiece create)
(init_graphics)
(define cohen p_cone)
(p_cone help create)
(cohen point '(-1 0 1))
(cohen lrad 0)
(cohen height 3)
(cohen urad 3)
(cohen create)
(graphics sketch 'cohen)
(workpiece subtract 'cohen)
(graphics clear)
(graphics sketch 'workpiece)
(define e1 edge)
(define f1 face) 
(f1 pick) -- the end of the block with the cutout
(e1 pick_from 'f1)
(define f2 face)
(f2 pick) -- cone surface
(define e2 edge)
(e2 pick_from f2)
(define hype edge)
(hype tag 145) -- or whatever edge belongs to both faces.
(hype enquire) -- hyperbola is represented as intersection curve.

-- intersection of two cylinders
(define c1 p_cylinder)
(c1 radius 2; point '(-5 0 0); direction '(1 0 0); height 10; create)
(graphics clear)
(graphics sketch 'c1)
(graphics ar)
(define c2 p_cylinder)
(c2 radius 1; point '(0 0 -4); direction '(0 0 1); height 8; create)
(graphics sketch 'c2)
(c1 subtract 'c2)
(graphics clear)
(graphics sketch 'c1)
(define f4 face)
(f4 pick) -- pick inside small cylinder
(define e4 edge)
(e4 pick_from f4)
(define loopy edge)
(loopy tag 241) -- either edge of e4
(loopy enquire) -- loopy curve is represented as intersection curve.
