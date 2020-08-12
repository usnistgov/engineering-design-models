(modeller start)

(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)

(define workpiece p_cylinder)
(workpiece radius 2.0; height 6.0)
(workpiece create)
(graphics sketch 'workpiece)
(graphics ar)

(define block1 p_block)
(block1 x 10; y 10; z 10; point '(0 0 4); direction '(1 0 1))
(block1 create)
(graphics sketch 'block1)

(workpiece subtract 'block1)
(workpiece merge)
(graphics clear)
(graphics sketch 'workpiece)

(workpiece transmit 'cylinder_cutoff)

(define block2 p_block)
(block2 x 10; y 10; z 10; point '(6 0 0))
(block2 create)
(graphics sketch 'block2)

(workpiece subtract 'block2)
(workpiece merge)

(graphics clear)
(graphics sketch 'workpiece)

(workpiece transmit 'cylinder_cutoff2)

(define block3 p_block)
(block3 x 20; y 10; z 10; point '(1 0 0); direction '(1 0 1))
(block3 create)
(graphics sketch 'block3)

(workpiece subtract 'block3)
(workpiece merge)

(graphics clear)
(graphics sketch 'workpiece)

(workpiece transmit 'cylinder_cutoff3)

