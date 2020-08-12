(modeller start)
(load "plisp/load_functions.l")
(define workpiece p_cone)
(workpiece lrad 4.0; urad 3.0; height 2.)
(workpiece create)
(init_graphics)

(graphics sketch 'workpiece)
(workpiece transmit 'cone_simple)

(define block1 p_block)
(block1 x 10; y 10; z 10; point '(5 0 0))
(block1 create)
(graphics sketch 'block1)

(workpiece subtract 'block1)
(graphics clear)
(workpiece transmit 'cone_cutoff)
