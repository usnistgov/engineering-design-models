(modeller start)
(define sfear2 p_sphere)
(sfear2 point '(0 0 0); radius 12; create)

(graphics view_direction '(-0.3 1 -0.2))
(graphics silhouette t)
(graphics sketch 'sfear2)
(graphics ar)

(define torus1 p_torus)
(torus1 point '(0 0 0); direction '(0 0 1); majrad 6; minrad 2; create)

(sfear2 subtract 'torus1)
(graphics clear)
(graphics sketch 'sfear2)
