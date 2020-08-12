(modeller start)
(define workpiece p_cone)
(workpiece lrad 4.0; urad 0.0; height 5.0; direction '(0 0 -1.0))
(workpiece create)

(graphics open_device 'sun3)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)
(graphics sketch 'workpiece)
(graphics ar)

(define cylinder1 p_cylinder)
(cylinder1 radius 4.0; height 3.0)
(cylinder1 create)
(graphics clear)
(graphics sketch 'cylinder1)
(graphics ar)

(workpiece unite 'cylinder1)
(graphics clear)
(graphics sketch 'workpiece) 
(graphics ar)

(define cone2 p_cone)
(cone2 lrad 4.0; urad 3.0; height 2.0; point '(0 0 3.0))
(cone2 create)
(graphics sketch 'cone2)

(workpiece unite 'cone2)
(graphics clear)
(graphics sketch 'workpiece)
(graphics ar)

(define cylinder2 p_cylinder)
(cylinder2 radius 3.0; height 1.0; point '(0 0 6.0); direction '(0 0 -1.0))
(cylinder2 create)
(graphics sketch 'cylinder2)

(workpiece unite 'cylinder2)
(graphics clear)
(graphics sketch 'workpiece)
(graphics ar)

(workpiece transmit 'cones2_cylinders2)
