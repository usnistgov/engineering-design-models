(modeller start)
(define ambi p_profile)
(ambi coordinate '((0 0 0) (1 0 1) (1 0 3) (0 0 4) (0 0 0)))
(ambi create)

(graphics open_device 'sun3)
(graphics view_direction '(-0.7 1 -0.5))
(graphics sketch 'ambi)
(graphics ar)

(ambi sweep '(0 4 0))
(graphics sketch 'ambi)
(graphics ar)

(define ambi2 p_profile)
(ambi2 coordinate '((6 0 0) (5 0 1) (5 0 3) (6 0 4) (6 0 0)))
(ambi2 create)

(graphics sketch 'ambi2)
(graphics ar)

(ambi2 sweep '(0 4 0))
(graphics sketch 'ambi2)
(graphics ar)

(define ambi3 p_profile)
(ambi3 coordinate '((0 0 0) (0 1 1) (0 1 3) (0 0 4) (0 0 0)))
(ambi3 create)
(graphics sketch 'ambi3)

(ambi3 sweep '(6 0 0))
(graphics sketch 'ambi3)

(define ambi4 p_profile)
(ambi4 coordinate '((0 4 0) (0 3 1) (0 3 3) (0 4 4) (0 4 0)))
(ambi4 create)
(graphics sketch 'ambi4)

(ambi4 sweep '(6 0 0))
(graphics sketch 'ambi4)
(graphics ar)

(ambi unite 'ambi3)
(ambi unite 'ambi4)
(ambi unite 'ambi2)
(ambi merge)

(graphics clear)
(graphics sketch 'ambi)
(graphics ar)

-- (ambi transmit "ambi")

-- for a less confusing picture
-- (graphics clear)
-- (graphics hidden 'ambi)
