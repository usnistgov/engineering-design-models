(modeller start)
(define hyp_test p_cone)
(hyp_test point '(0 0 0); direction '(0 0 1); urad 12; lrad 0.0; height 12.0)
(hyp_test create)

(graphics view_direction '(-0.3 1 -0.2))
(graphics silhouette t)
(graphics sketch 'hyp_test)
(graphics ar)

(define block1 p_block)
(block1 point '(10 0 0); direction '(0 0 1); x 10; y 30; z 20; create)
(graphics sketch 'block1)

(hyp_test subtract 'block1)
(graphics clear)
(graphics sketch 'hyp_test)
-- (hyp_test transmit "hyp_test")