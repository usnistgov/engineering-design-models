(modeller start)
(load "plisp/load_functions.l")
(define workpiece p_cone)
(workpiece lrad 4.0; urad 0.0; height 5.0)
(workpiece create)
(init_graphics)

(graphics sketch workpiece)
(workpiece transmit 'cone_plain)
