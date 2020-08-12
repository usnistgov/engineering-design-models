(modeller start)
(graphics open_device 'sun4)
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics silhouette t)

(define block1 p_block)
(block1 x 10; y 10; z 2)
(block1 create)
(graphics sketch 'block1)
(graphics ar)

(define cone1 p_cone)
(cone1 lrad 4.0; urad 3.0; height 2.)
(cone1 create)
(graphics sketch 'cone1)

(block1 subtract 'cone1)
(graphics clear)
(graphics sketch 'block1)
(graphics ar)

(block1 transmit 'block_hole)
