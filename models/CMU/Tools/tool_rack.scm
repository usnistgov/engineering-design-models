(part:clear)
(define tool_rack (solid:block (position -150 -150 0) (position 150 150 10)))

(define shelf1 (solid:block (position -150 -150 100) (position 150 150 110)))
(define shelf2 (solid:block (position -150 -150 200) (position 150 150 210)))
(define shelf3 (solid:block (position -150 -150 300) (position 150 150 310)))
(define shelf4 (solid:block (position -150 -150 400) (position 150 150 410)))
(define shelf5 (solid:block (position -150 -150 500) (position 150 150 510)))
(define side1  (solid:block (position -145 -150 0) (position -155 150 510)))
(define side2  (solid:block (position 145 -150 0) (position 155 150 510)))

(solid:unite tool_rack shelf1 shelf2 shelf3 shelf4 shelf5 side1 side2)
(part:save "tool_rack.sat" #t)