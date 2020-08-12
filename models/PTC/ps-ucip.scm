;; Save a satfile to ps
;; Daniel Lapadat

(view:dl 1000 50 300 300)

(define (makePS fileName) 
  (define inSat fileName)
  (define outPS (string-append fileName ".ps") )
  (define entList (part:load inSat))
  (define box (entity:box entList))
  (define p1 (car box))
  (define p2 (cdr box))
  (define xdiff (abs (- (position:x p1) (position:x p2))))
  (define ydiff (abs (- (position:y p1) (position:y p2))))
  (define zdiff (abs (- (position:z p1) (position:z p2))))
  (define axis
    (cond ((or (equal? xdiff ydiff)
	       (equal? xdiff zdiff)
	       (> xdiff ydiff)
	       (> xdiff zdiff)) (gvector 1 0 0))
	  ((or (equal? ydiff zdiff)
	       (> ydiff xdiff)
	       (> ydiff zdiff)) (gvector 0 1 0))
	  ((or (> zdiff xdiff)
	       (> zdiff ydiff)) (gvector 0 0 1))))
  (define axis (gvector 1 1 1))
  ;;(define trans (transform:rotation (position 0 0 0) axis 45 ))
  ;;(entity:transform entList trans)
  (define trans2 (transform:rotation (position 0 0 0) (gvector 1 1 1) 45 ))
  (entity:transform entList trans2)
  (zoom-all)
  (define data (phl:compute entList) )
  (phl:postscript data outPS )
  (part:clear)
  )

;;apply makePS to all elements in the list
(map makePS '(
"./V20/web_demos/models/simpreps/cone_casting.prt.hh.sat"
"./V20/web_demos/models/live_tool/chuck3.prt.hh.sat"
"./V20/web_demos/models/live_tool/chuck.prt.hh.sat"
"./V20/web_demos/models/thread-turn/blade/work.prt.hh.sat"
"./V20/web_demos/models/thread-turn/dp-bracket.prt.hh.sat"
"./V20/web_demos/models/tools/chuck3.prt.hh.sat"
"./V20/web_demos/models/tools/bem_25s.prt.hh.sat"
"./V20/web_demos/models/tools/0_1875_ball_cutter.prt.hh.sat"
"./V20/web_demos/models/4xturn/hch.prt.hh.sat"
"./V20/web_demos/models/4xturn/hmj.prt.hh.sat"
"./V20/web_demos/models/4xturn/htj.prt.hh.sat"
"./V20/web_demos/models/4xturn/4x_drill_shaft.prt.hh.sat"
"./V20/web_demos/models/multi_axis/multi_pin.prt.hh.sat"
"./V20/web_demos/models/multi_axis/bem_25s.prt.hh.sat"
"./V20/web_demos/models/multi_axis/chuck3.prt.hh.sat"
"./V20/web_demos/models/multi_axis/ashaft.prt.hh.sat"
"./V20/web_demos/models/multi_axis/multi_tj6.prt.hh.sat"
"./V20/web_demos/models/multi_axis/multi_chuck6.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_3.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_4.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_ark_1.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_multi_21.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_multi_22.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_multi_31.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_trian_ll.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_grain.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_grain_11.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_grain_22.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/part_multi_32.prt.hh.sat"
"./V20/web_demos/models/shtmtl_auto/moved_part_ark_1.prt.hh.sat"
))
(view:delete)
