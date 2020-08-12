-- This kid command file contains commands to make two versions of a
-- MEL logo. It is assumed the solid M E and L are already made.
-- A "mel solid" may already be made.  If not, this makes it.
-- The first logo is made by lining up three copies of the mel solid.
-- The second logo is made by uniting M E and L.

(modeller start)
(load "plisp/load_functions.l")
(graphics open_device 'sun3)
(graphics silhouette t)
(define mel body)

-- If MEL solid already made use next line
(mel receive "mel")

-- If MEL solid not made use this block to make it
-- This block creates a solid which is the intersection of the letters MEL.
-- Parallel to the z-axis the solid projects M
-- Parallel to the y-axis the solid projects L
-- Parallel to the x-axis the solid projects E
(mel receive "emm")
(define ell body)
(ell receive "ell")
(ell point '(3 3 3); direction '(1 0 0); angle 90)
(ell rotate)
(mel intersect 'ell)
(mel merge)
(define eee body)
(eee receive "eee")
(eee point '(3 3 3); direction '(0 0 1); angle 90; rotate)
(eee point '(3 3 3); direction '(0 1 0); angle 90; rotate)
(mel intersect 'eee)
(mel merge)
(mel transmit "mel")

-- to view the mel solid various ways
(graphics perspective nil)

-- semi-isometric view
(graphics view_direction '(-0.1732 0.3 -0.2))
(graphics clear)
(graphics hidden 'mel)
(graphics ar)

-- to see L
(graphics view_direction '(0 1  0))
(graphics clear)
(graphics hidden 'mel)
(graphics ar)

-- to see M
(graphics view_direction '(0 0 -1))
(graphics clear)
(graphics hidden 'mel)
(graphics ar)

--to see E
(graphics view_direction '(-1 0 0))
(graphics clear)
(graphics hidden 'mel)
(graphics ar)

-- for a perspective view
(graphics perspective t)
(graphics view_to '(0 0 0))

-- isometric perspective view
(graphics view_from '(12 12 12))

-- almost L perspective view
(graphics view_from '(2 -12 0.5 ))
(graphics clear)
(graphics hidden 'mel)
(graphics ar)

-- to make a MEL logo, copy mel solid twice, line up letters
-- and get a perspective view.
(define melE body)
(melE replicate 'mel)
(melE point '(3 3 3); direction '(0 0 1); angle 90; rotate)
(melE point '(3 3 3); direction '(0 1 0); angle 180; rotate)
(melE direction '(-1 0 0); distance 9; move)

(define melM body)
(melM replicate 'mel)
(melM point '(3 3 3); direction '(1 0 0); angle 90; rotate)
(melM point '(3 3 3); direction '(0 0 1); angle 180; rotate)
(melM direction '(-1 0 0); distance 18; move)

(graphics view_to '(-6 0 0))
(graphics view_from '(-6 -24 0.5))
(graphics axes nil)
(graphics clear)
(graphics hidden 'mel)
(graphics hidden 'melE)
(graphics hidden 'melM)
(graphics ar)

-- to make a single solid uniting M E L
-- tried depth 6 and 20 at angle 20, and depth 80 angle 15

-- (define mel2 body)
-- (mel2 receive "mel")
(make_other_pocket 'mel2
'((0 0) (1 0) (1 4.267949192431) (3 3.113248654052) (5 4.267949192431)
  (5 0) (6 0) (6 6) (3 4.267949192431) (0 6)) 0
'( nil   nil   nil                   nil                nil
   nil   nil   nil    nil               nil) 80)
(mel2 direction '(0 0 -1); distance 80; move)
(mel2 direction '(-1 0 0); distance 8; move)
(mel2 direction '(0 -1 0); distance 1.732050807569; move)
(mel2 point '(-3 -1.732050807569 0); direction '(0 0 1); angle -30; rotate)
(mel2 direction '(3 5.196152422707 0); angle 15; rotate)

-- (define eee body)
-- (eee receive "eee")
(make_other_pocket 'eee
'((0 0) (6 0) (6 1) (1 1) (1 2.5) (4 2.5) (4 3.5) (1 3.5)
  (1 5) (6 5) (6 6) (0 6)) 0
'( nil   nil   nil   nil   nil   nil   nil   nil
   nil   nil   nil   nil ) 80)
(eee direction '(0 0 -1); distance 80; move)
(eee direction '(-1 0 0); distance 3; move)
(eee direction '(0 -1 0); distance 6.732050807569; move)
(eee point '(-3 -1.732050807569 0); direction '(-1 0 0); angle 15; rotate)
(mel2 unite 'eee)
(mel2 merge)

-- (define ell body)
-- (ell receive "ell")

(make_other_pocket 'ell
'((0 0) (6 0) (6 1) (1 1) (1 6) (0 6)) 0
'( nil   nil   nil   nil   nil   nil ) 80)
(ell direction '(0 0 -1); distance 80; move)
(ell direction '(1 0 0); distance 2; move)
(ell direction '(0 -1 0); distance 1.732050807569; move)
(ell point '(3 -1.732050807569 0); direction '(0 0 1); angle 30; rotate)
(ell direction '(3 -5.196152422707 0); angle 15; rotate)
(mel2 unite 'ell)
(mel2 merge)

(graphics view_to '(0 0 0))
(graphics view_from '(0 0 40))
(graphics clear)
(graphics hidden 'mel2)
(graphics ar)
(mel2 transmit "mel2")

-- (quit)
