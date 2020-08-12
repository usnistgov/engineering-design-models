(put-program 'code '(
(start-program name anc2nc)
(comment "Changing tool to" probe-0.25)
(flood-off)
(retract-spindle)
(rapid x 18.0f0 y 5.0f0)
(change-tool 40)
(comment setting xy-origin from corner)
(set0-corner-cycle near-x 0.0 near-y 0.0 corner-type 1 x-offset 0.0 y-offset 0.0)
(comment "Changing tool to" ruf-mill-1.0-5)
(rapid x 18.0f0 y 5.0f0)
(change-tool 20)
(set-spindle-speed 2500)
(set-feed-rate 16)
(start-spindle-clockwise)
(comment milling a rectangular pocket)
(rapid x 0.13999999999999968 y 2.25)
(rapid z 10.85)
(flood-on)
(set-feed-rate 8.0)
(cut-straight x 0.13999999999999968 y 2.25 z 10.75)
(cut-straight x 4.86 y 2.25 z 10.25)
(cut-straight x 0.13999999999999968 y 2.25 z 10.25)
(cut-straight x 4.86 y 2.25 z 9.75)
(cut-straight x 0.13999999999999968 y 2.25 z 9.75)
(cut-straight x 4.86 y 2.25 z 9.25)
(cut-straight x 0.13999999999999968 y 2.25 z 9.25)
(cut-straight x 4.86 y 2.25 z 9.01)
(cut-straight x 0.13999999999999968 y 2.25)
(depth-loop
 ((rapid z 11.75)
  (rapid x 4.86 y 2.25)
  (rapid z 10.85)
  (set-feed-rate 40)
  (cut-straight z z-depth)
  (set-feed-rate 16)
  (cut-straight x 5.1000000000000005 y 2.01)
  (cut-straight x -0.10000000000000031)
  (cut-straight y 2.49)
  (cut-straight x 5.1000000000000005)
  (cut-straight y 2.01))
 10.75 1.74 0.5)

(comment "Changing tool to" end-mill-1.0-2)
(stop-spindle)
(flood-off)
(retract-spindle)
(rapid x 18.0f0 y 5.0f0)
(change-tool 21)
(set-feed-rate 16)
(start-spindle-clockwise)
(comment 1.75 deep rectangular pocket)
(rapid x 4.854999999888241 y 2.2450000001117587)
(rapid z 10.85)
(cut-straight z 9.1)
(cut-arc-ccw x 5.1 y 2.0 z 9.0 r 0.2450000001117587)
(cut-straight y 2.5)
(cut-straight x -0.10000000000000009)
(cut-straight y 2.0)
(cut-straight x 5.1)
(cut-straight z 10.85)
(comment "Changing tool to" end-mill-0.5-2)
(stop-spindle)
(retract-spindle)
(rapid x 18.0f0 y 5.0f0)
(change-tool 2)
(set-spindle-speed 3500)
(set-feed-rate 10)
(start-spindle-clockwise)
(comment milling an enclosed pocket)
(flood-on)
(rapid x 1.8128537379561551 y 0.6457567211363453)
(rapid z 10.85)
(set-feed-rate 5.0)
(cut-straight x 1.8128537379561551 y 0.6457567211363453 z 10.75)
(cut-straight x 1.4223431603925236 y 0.865 z 10.63)
(cut-straight x 1.8128537379561551 y 0.6457567211363453 z 10.51)
(cut-straight x 1.4223431603925236 y 0.865)
(depth-loop
 ((rapid z 11.75)
  (rapid x 1.4223431603925236 y 0.865)
  (rapid z 10.85)
  (set-spindle-speed 3500)
  (set-feed-rate 5.0)
  (cut-straight z z-depth)
  (cut-straight x 1.4223431603925236 y 0.865)
  (cut-straight x 1.8276568396074766 y 0.865)
  (cut-straight x 1.8914323498115582 y 0.6149999999999999)
  (set-feed-rate 10)
  (cut-straight x 1.4223431603925236 y 0.6149999999999999)
  (cut-straight x 1.358567650188442 y 0.6149999999999999)
  (rapid z 11.75)
  (rapid x 1.9053467866611635 y 0.51)
  (rapid z 10.85)
  (cut-straight z z-depth)
  (cut-arc-ccw x 1.9150364678124383 y 0.5224718574365498 r 0.010000000000000009)
  (cut-straight x 1.7976895290369281 y 0.9824718574365496)
  (cut-arc-ccw x 1.7879998478856536 y 0.99 r 0.010000000000000009)
  (cut-straight x 1.4620001521143466 y 0.99)
  (cut-arc-ccw x 1.4523104709630719 y 0.9824718574365499 r 0.010000000000000009)
  (cut-straight x 1.3349635321875617 y 0.5224718574365498)
  (cut-arc-ccw x 1.3446532133388365 y 0.51 r 0.010000000000000009)
  (cut-straight x 1.9053467866611635 y 0.51))
 10.75 0.24 0.26)

(cut-straight z 10.85)
(set-feed-rate 10)
(rapid z 11.75)
(comment milling an enclosed pocket)
(rapid x 3.562853737956155 y 0.6457567211363457)
(rapid z 10.85)
(set-feed-rate 5.0)
(cut-straight x 3.562853737956155 y 0.6457567211363457 z 10.75)
(cut-straight x 3.1723431603925234 y 0.865 z 10.63)
(cut-straight x 3.562853737956155 y 0.6457567211363457 z 10.51)
(cut-straight x 3.1723431603925234 y 0.865 z 10.51)
(cut-straight x 3.562853737956155 y 0.6457567211363457)
(depth-loop
 ((rapid z 11.75)
  (rapid x 3.562853737956155 y 0.6457567211363457)
  (rapid z 10.85)
  (set-spindle-speed 3500)
  (set-feed-rate 5.0)
  (cut-straight z z-depth)
  (cut-straight x 3.1723431603925234 y 0.865)
  (cut-straight x 3.577656839607477 y 0.865)
  (cut-straight x 3.6414323498115584 y 0.6149999999999999)
  (set-feed-rate 10)
  (cut-straight x 3.1723431603925234 y 0.6149999999999999)
  (cut-straight x 3.1085676501884416 y 0.6149999999999999)
  (rapid z 11.75)
  (rapid x 3.6553467866611635 y 0.51)
  (rapid z 10.85)
  (cut-straight z z-depth)
  (cut-arc-ccw x 3.6650364678124383 y 0.5224718574365498 r 0.010000000000000009)
  (cut-straight x 3.547689529036928 y 0.9824718574365496)
  (cut-arc-ccw x 3.5379998478856534 y 0.99 r 0.010000000000000009)
  (cut-straight x 3.2120001521143466 y 0.99)
  (cut-arc-ccw x 3.202310470963072 y 0.9824718574365499 r 0.010000000000000009)
  (cut-straight x 3.0849635321875617 y 0.5224718574365498)
  (cut-arc-ccw x 3.0946532133388365 y 0.51 r 0.010000000000000009)
  (cut-straight x 3.6553467866611635 y 0.51))
 10.75 0.24 0.26)

(cut-straight z 10.85)
(comment "Changing tool to" end-mill-0.25-2)
(stop-spindle)
(flood-off)
(retract-spindle)
(rapid x 18.0f0 y 5.0f0)
(change-tool 19)
(set-spindle-speed 5000)
(set-feed-rate 8)
(start-spindle-clockwise)
(comment milling a other_pocket)
(flood-on)
(rapid x 1.330404814690079 y 1.0150000002235173)
(rapid z 10.85)
(cut-straight z 10.5)
(cut-straight x 1.9195951853099211)
(cut-straight x 1.9695951853099214 y 0.8150000002235174)
(cut-straight x 1.280404814690079)
(cut-straight x 1.230404814690079 y 0.6150000002235173)
(cut-straight x 2.0195951853099214)
(cut-straight x 2.0695951853099213 y 0.4150000002235173)
(cut-straight x 1.180404814690079)
(rapid z 11.75)
(rapid x 2.0899029491994483 y 0.375)
(rapid z 10.85)
(cut-straight z 10.5)
(cut-straight x 1.9024029491994479 y 1.1249999999999998)
(cut-straight x 1.347597050800552 y 1.125)
(cut-straight x 1.160097050800552 y 0.37499999999999994)
(cut-straight x 2.0899029491994483 y 0.375)
(cut-straight z 10.85)
(rapid z 11.75)
(comment milling a other_pocket)
(rapid x 3.0804048146900787 y 1.0150000002235176)
(rapid z 10.85)
(cut-straight z 10.5)
(cut-straight x 3.6695951853099213)
(cut-straight x 3.7195951853099216 y 0.8150000002235172)
(cut-straight x 3.0304048146900784)
(cut-straight x 2.9804048146900786 y 0.6150000002235173)
(cut-straight x 3.7695951853099214)
(cut-straight x 3.8195951853099217 y 0.4150000002235172)
(cut-straight x 2.9304048146900783)
(rapid z 11.75)
(rapid x 3.8399029491994483 y 0.375)
(rapid z 10.85)
(cut-straight z 10.5)
(cut-straight x 3.652402949199448 y 1.1249999999999998)
(cut-straight x 3.0975970508005517 y 1.125)
(cut-straight x 2.910097050800552 y 0.37499999999999994)
(cut-straight x 3.8399029491994483 y 0.375)
(cut-straight z 10.85)
(rapid z 11.75)
(comment 0.125 deep rectangular pocket)
(rapid x 1.375 y 0.75)
(rapid z 10.85)
(cut-straight z 10.625)
(cut-straight x 0.625 y 0.75)
(rapid z 11.75)
(comment 0.125 deep rectangular pocket)
(rapid x 4.375 y 0.75)
(rapid z 10.85)
(cut-straight z 10.625)
(cut-straight x 3.625 y 0.75)
(flood-off)
(stop-spindle)
(retract-spindle)
(absolute-coordinates)
(rapid x 0.5f0 y 19.5f0)
(end-of-program)))
