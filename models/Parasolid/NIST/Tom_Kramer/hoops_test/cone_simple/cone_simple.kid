(modeller start)
(load "plisp/load_functions.l")
(define workpiece p_cone)
(workpiece lrad 4.0; urad 3.0; height 2.)
(workpiece create)
(init_graphics)

(graphics sketch workpiece)
(workpiece transmit 'cone_simple)
