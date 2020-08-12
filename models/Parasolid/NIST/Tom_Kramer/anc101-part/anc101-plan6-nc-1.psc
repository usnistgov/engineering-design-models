(put-program 'code '(
(start-program name anc6nc)
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
(rapid x 4.25 y 1.0)
(rapid z 5.1)
(flood-on)
(set-feed-rate 8.0)
(cut-straight x 4.25 y 1.0 z 5.0)
(cut-straight x 4.25 y 3.5 z 4.51)
(cut-straight x 4.25 y 1.0)
(depth-loop
 ((rapid z 6.0)
  (rapid x 4.25 y 2.8499999999999996)
  (rapid z 5.1)
  (set-feed-rate 40)
  (cut-straight z z-depth)
  (set-feed-rate 16)
  (cut-straight x 4.75 y 3.3499999999999996)
  (cut-straight x 4.75 y 1.15)
  (cut-straight x 3.75 y 1.15)
  (cut-straight x 3.75 y 3.3499999999999996)
  (cut-straight x 4.75 y 3.3499999999999996)
  (cut-straight x 5.25 y 3.8499999999999996)
  (cut-straight x 5.25 y 0.6499999999999999)
  (cut-straight x 3.25 y 0.6499999999999995)
  (cut-straight x 3.25 y 3.8499999999999996)
  (cut-straight x 5.25 y 3.8499999999999996)
  (cut-straight x 5.75 y 4.35)
  (cut-straight x 5.75 y 0.1499999999999999)
  (cut-straight x 2.75 y 0.1499999999999999)
  (cut-straight x 2.7500000000000004 y 4.35)
  (cut-straight x 5.75 y 4.35)
  (cut-straight x 6.05 y 4.550000000000001)
  (cut-straight x 6.049999999999999 y -0.04999999999999982)
  (cut-arc-cw x 5.949999999999999 y -0.1499999999999999 r 0.09999999999999876)
  (cut-straight x 2.55 y -0.1499999999999999)
  (cut-arc-cw x 2.45 y -0.04999999999999938 r 0.09999999999999876)
  (cut-straight x 2.45 y 4.550000000000001)
  (cut-arc-cw x 2.5500000000000007 y 4.65 r 0.09999999999999876)
  (cut-straight x 5.949999999999999 y 4.6499999999999995)
  (cut-arc-cw x 6.05 y 4.550000000000001 r 0.09999999999999876))
 5.0 0.49 0.6)

(set-feed-rate 16)
(rapid z 6.0)
(comment milling a rectangular pocket)
(rapid x 9.9 y 0.22499999999999964)
(rapid z 5.1)
(set-feed-rate 8.0)
(cut-straight x 9.9 y 0.22499999999999964 z 5.0)
(cut-straight x 9.9 y 4.275 z 4.5)
(cut-straight x 9.9 y 0.22499999999999964 z 4.5)
(cut-straight x 9.9 y 4.275 z 4.0)
(cut-straight x 9.9 y 0.22499999999999964 z 4.0)
(cut-straight x 9.9 y 4.275 z 3.5)
(cut-straight x 9.9 y 0.22499999999999964 z 3.5)
(cut-straight x 9.9 y 4.275 z 3.0)
(cut-straight x 9.9 y 0.22499999999999964)
(depth-loop
 ((rapid z 6.0)
  (rapid x 9.9 y 4.275)
  (rapid z 5.1)
  (set-feed-rate 40)
  (cut-straight z z-depth)
  (set-feed-rate 16)
  (cut-straight x 10.275 y 4.550000000000001)
  (cut-straight x 10.275 y -0.05000000000000071)
  (cut-arc-cw x 10.175 y -0.15000000000000036 r 0.09999999999999964)
  (cut-straight x 9.625 y -0.15000000000000036)
  (cut-arc-cw x 9.525 y -0.05000000000000071 r 0.09999999999999964)
  (cut-straight x 9.525 y 4.550000000000001)
  (cut-arc-cw x 9.625 y 4.65 r 0.09999999999999964)
  (cut-straight x 10.175 y 4.65)
  (cut-arc-cw x 10.275 y 4.550000000000001 r 0.09999999999999964))
 5.0 2.0 0.5)

(set-feed-rate 16)
(rapid z 6.0)
(comment milling a rectangular pocket)
(rapid x 3.26 y 2.5)
(rapid z 4.6)
(set-feed-rate 8.0)
(cut-straight x 3.26 y 2.5 z 4.5)
(cut-straight x 4.74 y 2.5 z 4.103435195201938)
(cut-straight x 3.26 y 2.5 z 4.01)
(cut-straight x 4.74 y 2.5)
(depth-loop
 ((rapid z 6.0)
  (rapid x 4.0 y 2.5)
  (rapid z 4.6)
  (set-feed-rate 40)
  (cut-straight z z-depth)
  (set-feed-rate 16)
  (cut-straight x 4.0 y 2.0)
  (cut-arc-cw x 3.5 y 2.5 r 0.5)
  (cut-arc-cw x 4.0 y 3.0 r 0.5)
  (cut-arc-cw x 4.5 y 2.5 r 0.5)
  (cut-arc-cw x 4.0 y 2.0 r 0.5)
  (cut-straight x 4.0 y 1.76)
  (cut-arc-cw x 3.26 y 2.5 r 0.7400000000000002)
  (cut-arc-cw x 4.0 y 3.24 r 0.7400000000000002)
  (cut-arc-cw x 4.74 y 2.5 r 0.7400000000000002)
  (cut-arc-cw x 4.0 y 1.76 r 0.7400000000000002))
 4.5 0.49 0.5)

(set-feed-rate 16)
(rapid z 6.0)
(comment milling a rectangular pocket)
(rapid x 3.51 y 2.5)
(rapid z 4.109999999999999)
(set-feed-rate 8.0)
(cut-straight x 3.51 y 2.5 z 4.01)
(cut-straight x 4.49 y 2.5 z 3.7474097914174993)
(cut-straight x 3.51 y 2.5 z 3.51)
(cut-straight x 4.49 y 2.5 z 3.2474097914174993)
(cut-straight x 3.51 y 2.5 z 3.01)
(cut-straight x 4.49 y 2.5 z 2.7474097914174993)
(cut-straight x 3.51 y 2.5 z 2.51)
(cut-straight x 4.49 y 2.5 z 2.2474097914174993)
(cut-straight x 3.51 y 2.5 z 2.0999999999999996)
(cut-straight x 4.49 y 2.5)
(depth-loop
 ((rapid z 6.0)
  (rapid x 4.0 y 2.5)
  (rapid z 4.109999999999999)
  (set-feed-rate 40)
  (cut-straight z z-depth)
  (set-feed-rate 16)
  (cut-straight x 4.0 y 2.01)
  (cut-arc-cw x 3.51 y 2.5 r 0.4900000000000002)
  (cut-arc-cw x 4.0 y 2.99 r 0.4900000000000002)
  (cut-arc-cw x 4.49 y 2.5 r 0.4900000000000002)
  (cut-arc-cw x 4.0 y 2.01 r 0.4900000000000002))
 4.01 1.91 0.5)

(comment "Changing tool to" end-mill-1.0-2)
(stop-spindle)
(flood-off)
(retract-spindle)
(rapid x 18.0f0 y 5.0f0)
(change-tool 21)
(set-spindle-speed 3500)
(set-feed-rate 16)
(start-spindle-clockwise)
(comment 0.02 deep rectangular pocket)
(rapid x 2.8250000000000006 y 4.640000000223518)
(rapid z 4.619999999999999)
(cut-straight z 4.5)
(cut-straight x 2.8249999999999993 y -0.14000000022351689)
(cut-straight x 3.574999999999999 y -0.14000000022351644)
(cut-straight x 3.575 y 4.640000000223518)
(cut-straight x 4.325 y 4.640000000223518)
(cut-straight x 4.325 y -0.14000000022351733)
(cut-straight x 5.075 y -0.14000000022351733)
(cut-straight x 5.075 y 4.640000000223518)
(cut-straight z 4.619999999999999)
(rapid x 5.55 y 4.050000000000001)
(rapid z 4.619999999999999)
(cut-straight z 4.6)
(cut-arc-ccw x 6.05 y 4.550000000000001 z 4.5 r 0.5)
(cut-arc-ccw x 5.949999999999999 y 4.65 r 0.09999999999999998)
(cut-straight x 2.5500000000000007 y 4.65)
(cut-arc-ccw x 2.45 y 4.550000000000001 r 0.09999999999999998)
(cut-straight x 2.45 y -0.04999999999999938)
(cut-arc-ccw x 2.55 y -0.1499999999999999 r 0.09999999999999998)
(cut-straight x 5.949999999999999 y -0.1499999999999999)
(cut-arc-ccw x 6.049999999999999 y -0.04999999999999982 r 0.09999999999999998)
(cut-straight x 6.05 y 4.550000000000001)
(cut-arc-ccw x 6.0 y 4.6000000000000005 z 4.6 r 0.04999999999999999)
(set-spindle-speed 2500)
(rapid z 6.0)
(comment 0.5 deep rectangular pocket)
(rapid x 4.637945922732332 y 2.875)
(rapid z 4.6)
(cut-straight z 4.0)
(cut-straight x 3.3620540772676684)
(cut-straight x 3.3620540772676684 y 2.125)
(cut-straight x 4.637945922732332)
(cut-straight z 4.6)
(rapid x 3.5 y 2.25)
(rapid z 4.6)
(cut-straight z 4.1)
(cut-arc-ccw x 4.0 y 1.75 z 4.0 r 0.5)
(cut-arc-ccw x 4.75 y 2.5 r 0.75)
(cut-arc-ccw x 4.0 y 3.25 r 0.75)
(cut-arc-ccw x 3.25 y 2.5 r 0.75)
(cut-arc-ccw x 4.0 y 1.75 r 0.75)
(cut-arc-ccw x 4.375 y 2.125 z 4.1 r 0.375)
(rapid z 6.0)
(comment 1.9 deep rectangular pocket)
(rapid x 4.4737879274728805 y 2.625)
(rapid z 4.1)
(cut-straight z 2.1)
(cut-straight x 3.52621207252712)
(cut-straight z 4.1)
(rapid x 3.5049999998882413 y 2.4950000001117587)
(rapid z 4.1)
(cut-straight z 2.1999999999999997)
(cut-arc-ccw x 4.0 y 2.0 z 2.1 r 0.4950000001117587)
(cut-arc-ccw x 4.5 y 2.5 r 0.5)
(cut-arc-ccw x 4.0 y 3.0 r 0.5)
(cut-arc-ccw x 3.5 y 2.5 r 0.5)
(cut-arc-ccw x 4.0 y 2.0 r 0.5)
(cut-arc-ccw x 4.25 y 2.25 z 2.1999999999999997 r 0.25)
(comment "Changing tool to" center-drill-0.1875-2)
(stop-spindle)
(retract-spindle)
(rapid x 18.0f0 y 5.0f0)
(change-tool 16)
(set-spindle-speed 5000)
(set-feed-rate 8)
(start-spindle-clockwise)
(comment 0.07999999999999999 deep center drill)
(rapid x 4.8125 y 3.907291281149712 z 6.0)
(flood-on)
(center-drill-cycle r 4.6 z 4.42)
(rapid z 6.0)
(comment 0.07999999999999999 deep center drill)
(rapid x 4.0 y 4.125 z 6.0)
(center-drill-cycle r 4.6 z 4.42)
(rapid z 6.0)
(comment 0.07999999999999999 deep center drill)
(rapid x 3.1875 y 3.907291281149713 z 6.0)
(center-drill-cycle r 4.6 z 4.42)
(rapid z 6.0)
(comment 0.07999999999999999 deep center drill)
(rapid x 2.5927087188502878 y 3.3125 z 6.0)
(center-drill-cycle r 4.6 z 4.42)
(rapid z 6.0)
(comment 0.07999999999999999 deep center drill)
(rapid x 2.375 y 2.5 z 6.0)
(center-drill-cycle r 4.6 z 4.42)
(rapid z 6.0)
(comment 0.07999999999999999 deep center drill)
(rapid x 2.592708718850287 y 1.6875 z 6.0)
(center-drill-cycle r 4.6 z 4.42)
(rapid z 6.0)
(comment 0.07999999999999999 deep center drill)
(rapid x 3.1875 y 1.0927087188502878 z 6.0)
(center-drill-cycle r 4.6 z 4.42)
(rapid z 6.0)
(comment 0.07999999999999999 deep center drill)
(rapid x 4.0 y 0.875 z 6.0)
(center-drill-cycle r 4.6 z 4.42)
(rapid z 6.0)
(comment 0.07999999999999999 deep center drill)
(rapid x 4.8125 y 1.0927087188502873 z 6.0)
(center-drill-cycle r 4.6 z 4.42)
(comment "Changing tool to" drill-0.316-2)
(stop-spindle)
(flood-off)
(retract-spindle)
(rapid x 18.0f0 y 5.0f0)
(change-tool 9)
(set-spindle-speed 3500)
(set-feed-rate 5)
(start-spindle-clockwise)
(comment 0.5999359778063545 deep hole)
(rapid x 4.8125 y 3.907291281149712 z 6.0)
(flood-on)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(rapid z 6.0)
(comment 0.5999359778063545 deep hole)
(rapid x 4.0 y 4.125 z 6.0)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(rapid z 6.0)
(comment 0.5999359778063545 deep hole)
(rapid x 3.1875 y 3.907291281149713 z 6.0)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(rapid z 6.0)
(comment 0.5999359778063545 deep hole)
(rapid x 2.5927087188502878 y 3.3125 z 6.0)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(rapid z 6.0)
(comment 0.5999359778063545 deep hole)
(rapid x 2.375 y 2.5 z 6.0)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(rapid z 6.0)
(comment 0.5999359778063545 deep hole)
(rapid x 2.592708718850287 y 1.6875 z 6.0)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(rapid z 6.0)
(comment 0.5999359778063545 deep hole)
(rapid x 3.1875 y 1.0927087188502878 z 6.0)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(rapid z 6.0)
(comment 0.5999359778063545 deep hole)
(rapid x 4.0 y 0.875 z 6.0)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(rapid z 6.0)
(comment 0.5999359778063545 deep hole)
(rapid x 4.8125 y 1.0927087188502873 z 6.0)
(peck-drill-cycle r 4.6 z 3.9000640221936456 peck-depth 0.15)
(comment "Changing tool to" end-mill-0.375-2)
(stop-spindle)
(flood-off)
(retract-spindle)
(rapid x 18.0f0 y 5.0f0)
(change-tool 8)
(set-spindle-speed 4000)
(set-feed-rate 8)
(start-spindle-clockwise)
(comment 0.6 deep counterbore)
(rapid x 4.8125 y 3.907291281149712 z 6.0)
(flood-on)
(counterbore-cycle r 4.6 z 3.9)
(rapid z 6.0)
(comment 0.6 deep counterbore)
(rapid x 4.0 y 4.125 z 6.0)
(counterbore-cycle r 4.6 z 3.9)
(rapid z 6.0)
(comment 0.6 deep counterbore)
(rapid x 3.1875 y 3.907291281149713 z 6.0)
(counterbore-cycle r 4.6 z 3.9)
(rapid z 6.0)
(comment 0.6 deep counterbore)
(rapid x 2.5927087188502878 y 3.3125 z 6.0)
(counterbore-cycle r 4.6 z 3.9)
(rapid z 6.0)
(comment 0.6 deep counterbore)
(rapid x 2.375 y 2.5 z 6.0)
(counterbore-cycle r 4.6 z 3.9)
(rapid z 6.0)
(comment 0.6 deep counterbore)
(rapid x 2.592708718850287 y 1.6875 z 6.0)
(counterbore-cycle r 4.6 z 3.9)
(rapid z 6.0)
(comment 0.6 deep counterbore)
(rapid x 3.1875 y 1.0927087188502878 z 6.0)
(counterbore-cycle r 4.6 z 3.9)
(rapid z 6.0)
(comment 0.6 deep counterbore)
(rapid x 4.0 y 0.875 z 6.0)
(counterbore-cycle r 4.6 z 3.9)
(rapid z 6.0)
(comment 0.6 deep counterbore)
(rapid x 4.8125 y 1.0927087188502873 z 6.0)
(counterbore-cycle r 4.6 z 3.9)
(flood-off)
(stop-spindle)
(retract-spindle)
(absolute-coordinates)
(rapid x 0.5f0 y 19.5f0)
(end-of-program)))
