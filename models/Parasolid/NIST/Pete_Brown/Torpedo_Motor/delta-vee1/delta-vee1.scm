;; This file creates the inner sphere of the molecular measuring machine
;; Created by Pete Brown 
;; Last modified 9/21/95
;; Addition:   Fixed a problem with lower back counterbore
;;             Removed redraw from the graphics and added
;;             some additional displays
;; 12/13/95:   Finally found out how to copy a solid & translate
;;             Worked on the small upper through hole
;;             Need to put graphics back in so I can see what is happening
;; 12/14/95:   Added Graphics back in
;;             finished the lower cut out & motor holes.
;;
;; 12/19/95:   Finished with the Inner Sphere. Added Support Bolt
;;             and allignment pin holes.  I am not sure these are correct
;;             need to set view & confirm
;;             I have also defined the supports, leaving them to be separte
;;             parts.
(part:clear)

;;  Lets go ahead and put in the grpahics commands
;; Define a view for the Molecular Measuring Machine
;;
(define mview (view:new 80 1 300 300))
(view:set-title "Molecular Measuring Machine" mview)
(view:set (position 2 1 1)
          (position 0 0 2)
          (gvector 0 0 1)
          mview)
;;  move in a little bit so you can see what is going on.
(view:set-size 8 8  mview)
(view:refresh mview)


;;  Now load the part
(define stock (part:load "stock_s1.sat"))

(entity:transform stock (transform:translation (gvector 0 0 0.125)))

(define motor (part:load "torp_s1.sat"))

;;(define delta-vee
;;  (bool:subtract stock motor))

(define delta-vee
  (bool:subtract (entity 1 1) (entity 2 1)))


;;(define delta
;;  (bool:intersect (entity 1 1) (entity 2 1)))


(option:set "save_version" 106)

(part:save "bill.sat")
