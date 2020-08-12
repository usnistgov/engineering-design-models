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


;;  Load the first part
(part:load "stock.sat")

;;  Load the first part
(part:clear)
(part:load "stock_s1.sat")

;;  Load the first part
(part:clear)
(part:load "stock_s2.sat")


;;  Load the first part
(part:clear)
(part:load "torp.sat")

;;  Load the first part
(part:clear)
(part:load "torp_s1.sat")

;;  Load the first part
(part:clear)
(part:load "torp_s2.sat")

