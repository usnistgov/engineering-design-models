;; This file loads various versions of the torpedo motor & its stock
;; Created by Pete Brown 
;; Last modified 8/6/96
;;            
(part:clear)

;;  Lets go ahead and put in the grpahics commands
;; Define a view for the Torpedo Motor
;;
(define mview (view:new 80 1 300 300))
(view:set-title "Torpedo Motor" mview)
(view:set (position 2 1 1)
          (position 0 0 2)
          (gvector 0 0 1)
          mview)
;;  move in a little bit so you can see what is going on.
(view:set-size 8 8  mview)
(view:refresh mview)


;;  Now load the part
(define stock (part:load "stock_s2.sat"))

(entity:transform stock (transform:translation (gvector 0 0 0.125)))

(define motor (part:load "torp_s2.sat"))

;;(define delta-vee
;;  (bool:subtract stock motor))

(define subtract
  (bool:subtract (entity 1 1) (entity 2 1)))

(option:set "save_version" 106)

(part:save "subtract.sat")



