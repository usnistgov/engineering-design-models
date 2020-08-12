------------------------------------------------------------
MECHANICA Structure Version 8.0(35)
Diagnostic Log
Wed Nov 22, 1995   07:23:18
------------------------------------------------------------

Begin Updating Parameters
Wed Nov 22, 1995   07:23:20

Parameters:
   d98                   0.00000%

End Updating Parameters
Wed Nov 22, 1995   07:24:22

Begin Analysis: "anlys1"
Wed Nov 22, 1995   07:24:26

Using Block Solver
Wed Nov 22, 1995   07:24:26

Using element level matrix-vector multiplies
Wed Nov 22, 1995   07:24:26

Geometry Integration Turned On
Wed Nov 22, 1995   07:24:26

Load Integration Turned On
Wed Nov 22, 1995   07:24:26

Begin Mass Calculation
Wed Nov 22, 1995   07:24:32

Begin P-Loop Pass 1
Wed Nov 22, 1995   07:24:36

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:24:36

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:24:36

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   07:24:36

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

NOTES:
Recommended bsram values assume you are using the direct
solver on a machine with unlimited memory.  Do not use a
bsram value larger than half machine RAM.

The elram parameter affects performance only if you are
using the iterative solver or the modal solver.  The
elram parameter works by storing some or all of the
element file in machine RAM.  Increasing the elram
parameter decreases disk I/O on the element file, up to
the point where the entire element file resides in
machine RAM.  Total elram plus bsram should be less than
0.75 times machine RAM.

If you are using the iterative solver, elram may improve
performance more than bsram.  Therefore, it may be best
to use less bsram than for the direct solver, and to use
more elram than bsram.  For the iterative solver, an
approximate guideline is to use bsram = 0.1 times machine
RAM and to use elram = 0.5 times machine RAM.

If you are using the modal solver, bsram and elram may
improve performance more equally.  For the modal solver,
an approximate guideline is to use bsram = 0.25 times
machine RAM and to use elram = 0.25 times machine RAM.

Total swap space available must be greater than the
maximum memory usage of your job.  Total disk space 
available must be greater than the maximum disk usage
of your job.  See the stt file for resource usage.
Your job may fail if there is a shortage of disk space
or swap space.

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   07:24:38

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   07:24:39

Begin Load Calculations
Wed Nov 22, 1995   07:24:39

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:24:40

Begin Convergence Check Pass 1
Wed Nov 22, 1995   07:24:48

Begin P-Loop Pass 2
Wed Nov 22, 1995   07:24:49

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:24:49

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:24:49

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   07:24:49

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   07:24:52

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   07:24:52

Begin Load Calculations
Wed Nov 22, 1995   07:24:53

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:24:54

Begin Convergence Check Pass 2
Wed Nov 22, 1995   07:25:03

Begin P-Loop Pass 3
Wed Nov 22, 1995   07:25:04

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:25:04

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:25:04

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   07:25:05

Number of equations: 4323
Average bandwidth:   463.852
Maximum bandwidth:   3873
Size of global matrix profile (mb): 16.0419
Number of terms in global matrix profile: 2005233     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.19988
Maximum element matrix size (kb): 30.624
Average element matrix size (kb): 15.9086

Number of equations: 5388
Average bandwidth:   455.077
Maximum bandwidth:   4773
Size of global matrix profile (mb): 19.6156
Number of terms in global matrix profile: 2451954     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.19988
Maximum element matrix size (kb): 30.624
Average element matrix size (kb): 15.9086

Number of equations: 5388
Average bandwidth:   455.077
Maximum bandwidth:   4773
Size of global matrix profile (mb): 19.6156
Number of terms in global matrix profile: 2451954     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.19988
Maximum element matrix size (kb): 30.624
Average element matrix size (kb): 15.9086

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   07:25:13

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   07:25:14

Begin Load Calculations
Wed Nov 22, 1995   07:25:51

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:25:52

Begin Convergence Check Pass 3
Wed Nov 22, 1995   07:26:07

Begin P-Loop Pass 4
Wed Nov 22, 1995   07:26:08

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:26:09

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:26:09

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   07:26:10

Number of equations: 7791
Average bandwidth:   414.523
Maximum bandwidth:   3498
Size of global matrix profile (mb): 25.8364
Number of terms in global matrix profile: 3229545     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.307
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.8295

Number of equations: 10770
Average bandwidth:   420.144
Maximum bandwidth:   4851
Size of global matrix profile (mb): 36.1996
Number of terms in global matrix profile: 4524951     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.307
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.8295

Number of equations: 10770
Average bandwidth:   420.144
Maximum bandwidth:   4851
Size of global matrix profile (mb): 36.1996
Number of terms in global matrix profile: 4524951     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.307
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.8295

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   07:26:33

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   07:26:37

Begin Load Calculations
Wed Nov 22, 1995   07:27:40

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:27:44

Begin Convergence Check Pass 4
Wed Nov 22, 1995   07:28:09

Begin P-Loop Pass 5
Wed Nov 22, 1995   07:28:12

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:28:12

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:28:12

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   07:28:16

Number of equations: 11769
Average bandwidth:   799.873
Maximum bandwidth:   11214
Size of global matrix profile (mb): 75.3096
Number of terms in global matrix profile: 9413706     
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 25.0388
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 94.8439

Number of equations: 18279
Average bandwidth:   816.609
Maximum bandwidth:   17346
Size of global matrix profile (mb): 119.414
Number of terms in global matrix profile: 14926788    
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 25.0388
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 94.8439
Using element-by-element static condensation.

Number of equations: 11769
Average bandwidth:   799.873
Maximum bandwidth:   11214
Size of global matrix profile (mb): 75.3096
Number of terms in global matrix profile: 9413706     
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 25.0388
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 94.8439

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   07:29:16

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   07:30:04

Begin Load Calculations
Wed Nov 22, 1995   07:34:59

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:35:38

Begin Convergence Check Pass 5
Wed Nov 22, 1995   07:36:27

Begin P-Loop Pass 6
Wed Nov 22, 1995   07:36:34

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:36:35

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:36:35

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   07:36:42

Number of equations: 14796
Average bandwidth:   1160.69
Maximum bandwidth:   12663
Size of global matrix profile (mb): 137.389
Number of terms in global matrix profile: 17173566    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 41.8093
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 158.369

Number of equations: 25053
Average bandwidth:   1198.6
Maximum bandwidth:   21870
Size of global matrix profile (mb): 240.228
Number of terms in global matrix profile: 30028485    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 41.8093
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 158.369
Using element-by-element static condensation.

Number of equations: 14796
Average bandwidth:   1160.69
Maximum bandwidth:   12663
Size of global matrix profile (mb): 137.389
Number of terms in global matrix profile: 17173566    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 41.8093
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 158.369

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   07:38:39

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   07:41:32

Begin Load Calculations
Wed Nov 22, 1995   07:55:09

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:56:27

Begin Convergence Check Pass 6
Wed Nov 22, 1995   07:57:53

Completed P-Loop
Wed Nov 22, 1995   07:58:06

Completed Analysis: anlys1
Wed Nov 22, 1995   07:58:07

Completed Sensitivity Step 1 of 11

Begin Updating Parameters
Wed Nov 22, 1995   07:58:08

Parameters:
   d98                  10.00000%

End Updating Parameters
Wed Nov 22, 1995   07:59:04

Begin Analysis: "anlys1"
Wed Nov 22, 1995   07:59:07

Begin Mass Calculation
Wed Nov 22, 1995   07:59:13

Begin P-Loop Pass 1
Wed Nov 22, 1995   07:59:16

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:59:17

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:59:17

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   07:59:17

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   07:59:19

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   07:59:19

Begin Load Calculations
Wed Nov 22, 1995   07:59:19

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:59:20

Begin Convergence Check Pass 1
Wed Nov 22, 1995   07:59:28

Begin P-Loop Pass 2
Wed Nov 22, 1995   07:59:29

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:59:29

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:59:29

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   07:59:29

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   07:59:32

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   07:59:32

Begin Load Calculations
Wed Nov 22, 1995   07:59:33

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:59:34

Begin Convergence Check Pass 2
Wed Nov 22, 1995   07:59:43

Begin P-Loop Pass 3
Wed Nov 22, 1995   07:59:44

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   07:59:45

Begin Matrix Profile Minimization
Wed Nov 22, 1995   07:59:45

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   07:59:45

Number of equations: 4323
Average bandwidth:   463.852
Maximum bandwidth:   3873
Size of global matrix profile (mb): 16.0419
Number of terms in global matrix profile: 2005233     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.19988
Maximum element matrix size (kb): 30.624
Average element matrix size (kb): 15.9086

Number of equations: 5388
Average bandwidth:   455.077
Maximum bandwidth:   4773
Size of global matrix profile (mb): 19.6156
Number of terms in global matrix profile: 2451954     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.19988
Maximum element matrix size (kb): 30.624
Average element matrix size (kb): 15.9086

Number of equations: 5388
Average bandwidth:   455.077
Maximum bandwidth:   4773
Size of global matrix profile (mb): 19.6156
Number of terms in global matrix profile: 2451954     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.19988
Maximum element matrix size (kb): 30.624
Average element matrix size (kb): 15.9086

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   07:59:55

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   07:59:56

Begin Load Calculations
Wed Nov 22, 1995   08:00:37

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:00:39

Begin Convergence Check Pass 3
Wed Nov 22, 1995   08:00:56

Begin P-Loop Pass 4
Wed Nov 22, 1995   08:00:58

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:00:59

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:00:59

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   08:01:00

Number of equations: 7833
Average bandwidth:   424.143
Maximum bandwidth:   3522
Size of global matrix profile (mb): 26.5785
Number of terms in global matrix profile: 3322311     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.4411
Maximum element matrix size (kb): 87.024
Average element matrix size (kb): 43.3376

Number of equations: 10842
Average bandwidth:   429.016
Maximum bandwidth:   4962
Size of global matrix profile (mb): 37.2111
Number of terms in global matrix profile: 4651392     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.4411
Maximum element matrix size (kb): 87.024
Average element matrix size (kb): 43.3376

Number of equations: 10842
Average bandwidth:   429.016
Maximum bandwidth:   4962
Size of global matrix profile (mb): 37.2111
Number of terms in global matrix profile: 4651392     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.4411
Maximum element matrix size (kb): 87.024
Average element matrix size (kb): 43.3376

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   08:01:27

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   08:01:31

Begin Load Calculations
Wed Nov 22, 1995   08:02:39

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:02:43

Begin Convergence Check Pass 4
Wed Nov 22, 1995   08:03:11

Begin P-Loop Pass 5
Wed Nov 22, 1995   08:03:15

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:03:16

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:03:16

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   08:03:19

Number of equations: 11742
Average bandwidth:   769.112
Maximum bandwidth:   11025
Size of global matrix profile (mb): 72.2473
Number of terms in global matrix profile: 9030918     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 24.9435
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 94.4829

Number of equations: 18180
Average bandwidth:   787.225
Maximum bandwidth:   17016
Size of global matrix profile (mb): 114.494
Number of terms in global matrix profile: 14311755    
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 24.9435
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 94.4829
Using element-by-element static condensation.

Number of equations: 11742
Average bandwidth:   769.112
Maximum bandwidth:   11025
Size of global matrix profile (mb): 72.2473
Number of terms in global matrix profile: 9030918     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 24.9435
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 94.4829

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   08:04:20

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   08:05:34

Begin Load Calculations
Wed Nov 22, 1995   08:10:20

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:10:58

Begin Convergence Check Pass 5
Wed Nov 22, 1995   08:11:58

Begin P-Loop Pass 6
Wed Nov 22, 1995   08:12:05

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:12:06

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:12:06

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   08:12:13

Number of equations: 14841
Average bandwidth:   1274.2
Maximum bandwidth:   13104
Size of global matrix profile (mb): 151.284
Number of terms in global matrix profile: 18910458    
Minimum recommended bsram under ideal conditions: 13

Size of element file (mb): 42.0778
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 159.386

Number of equations: 25110
Average bandwidth:   1312.8
Maximum bandwidth:   22650
Size of global matrix profile (mb): 263.714
Number of terms in global matrix profile: 32964291    
Minimum recommended bsram under ideal conditions: 14

Size of element file (mb): 42.0778
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 159.386
Using element-by-element static condensation.

Number of equations: 14841
Average bandwidth:   1274.2
Maximum bandwidth:   13104
Size of global matrix profile (mb): 151.284
Number of terms in global matrix profile: 18910458    
Minimum recommended bsram under ideal conditions: 13

Size of element file (mb): 42.0778
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 159.386

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   08:14:25

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   08:17:56

Begin Load Calculations
Wed Nov 22, 1995   08:35:20

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:36:49

Begin Convergence Check Pass 6
Wed Nov 22, 1995   08:38:16

Completed P-Loop
Wed Nov 22, 1995   08:38:30

Completed Analysis: anlys1
Wed Nov 22, 1995   08:38:31

Completed Sensitivity Step 2 of 11

Begin Updating Parameters
Wed Nov 22, 1995   08:38:31

Parameters:
   d98                  20.00000%

End Updating Parameters
Wed Nov 22, 1995   08:39:30

Begin Analysis: "anlys1"
Wed Nov 22, 1995   08:39:33

Begin Mass Calculation
Wed Nov 22, 1995   08:39:39

Begin P-Loop Pass 1
Wed Nov 22, 1995   08:39:42

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:39:43

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:39:43

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   08:39:43

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   08:39:45

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   08:39:45

Begin Load Calculations
Wed Nov 22, 1995   08:39:45

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:39:46

Begin Convergence Check Pass 1
Wed Nov 22, 1995   08:39:54

Begin P-Loop Pass 2
Wed Nov 22, 1995   08:39:55

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:39:55

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:39:55

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   08:39:55

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   08:39:58

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   08:39:58

Begin Load Calculations
Wed Nov 22, 1995   08:39:59

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:40:00

Begin Convergence Check Pass 2
Wed Nov 22, 1995   08:40:09

Begin P-Loop Pass 3
Wed Nov 22, 1995   08:40:10

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:40:11

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:40:11

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   08:40:11

Number of equations: 4287
Average bandwidth:   445.395
Maximum bandwidth:   3915
Size of global matrix profile (mb): 15.2753
Number of terms in global matrix profile: 1909410     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Number of equations: 5325
Average bandwidth:   437.945
Maximum bandwidth:   4809
Size of global matrix profile (mb): 18.6564
Number of terms in global matrix profile: 2332056     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Number of equations: 5325
Average bandwidth:   437.945
Maximum bandwidth:   4809
Size of global matrix profile (mb): 18.6564
Number of terms in global matrix profile: 2332056     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   08:40:20

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   08:40:21

Begin Load Calculations
Wed Nov 22, 1995   08:40:55

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:40:57

Begin Convergence Check Pass 3
Wed Nov 22, 1995   08:41:13

Begin P-Loop Pass 4
Wed Nov 22, 1995   08:41:15

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:41:15

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:41:15

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   08:41:16

Number of equations: 7767
Average bandwidth:   378.341
Maximum bandwidth:   3075
Size of global matrix profile (mb): 23.5086
Number of terms in global matrix profile: 2938572     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1933
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.3989

Number of equations: 10647
Average bandwidth:   383.292
Maximum bandwidth:   4182
Size of global matrix profile (mb): 32.6472
Number of terms in global matrix profile: 4080906     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1933
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.3989

Number of equations: 10647
Average bandwidth:   383.292
Maximum bandwidth:   4182
Size of global matrix profile (mb): 32.6472
Number of terms in global matrix profile: 4080906     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1933
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.3989

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   08:41:40

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   08:41:45

Begin Load Calculations
Wed Nov 22, 1995   08:42:40

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:42:46

Begin Convergence Check Pass 4
Wed Nov 22, 1995   08:43:16

Begin P-Loop Pass 5
Wed Nov 22, 1995   08:43:19

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:43:20

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:43:20

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   08:43:23

Number of equations: 11733
Average bandwidth:   647.565
Maximum bandwidth:   6072
Size of global matrix profile (mb): 60.7831
Number of terms in global matrix profile: 7597884     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.8065
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 93.9639

Number of equations: 18102
Average bandwidth:   668.067
Maximum bandwidth:   9267
Size of global matrix profile (mb): 96.7468
Number of terms in global matrix profile: 12093351    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.8065
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 93.9639
Using element-by-element static condensation.

Number of equations: 11733
Average bandwidth:   647.565
Maximum bandwidth:   6072
Size of global matrix profile (mb): 60.7831
Number of terms in global matrix profile: 7597884     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.8065
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 93.9639

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   08:44:29

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   08:45:52

Begin Load Calculations
Wed Nov 22, 1995   08:49:12

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   08:49:51

Begin Convergence Check Pass 5
Wed Nov 22, 1995   08:50:50

Begin P-Loop Pass 6
Wed Nov 22, 1995   08:50:57

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   08:50:58

Begin Matrix Profile Minimization
Wed Nov 22, 1995   08:50:58

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   08:51:06

Number of equations: 14787
Average bandwidth:   1307.86
Maximum bandwidth:   12870
Size of global matrix profile (mb): 154.714
Number of terms in global matrix profile: 19339308    
Minimum recommended bsram under ideal conditions: 14

Size of element file (mb): 41.7429
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 158.117

Number of equations: 24924
Average bandwidth:   1349.35
Maximum bandwidth:   22209
Size of global matrix profile (mb): 269.049
Number of terms in global matrix profile: 33631152    
Minimum recommended bsram under ideal conditions: 15

Size of element file (mb): 41.7429
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 158.117
Using element-by-element static condensation.

Number of equations: 14787
Average bandwidth:   1307.86
Maximum bandwidth:   12870
Size of global matrix profile (mb): 154.714
Number of terms in global matrix profile: 19339308    
Minimum recommended bsram under ideal conditions: 14

Size of element file (mb): 41.7429
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 158.117

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   08:53:18

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   08:56:59

Begin Load Calculations
Wed Nov 22, 1995   09:15:30

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   09:17:03

Begin Convergence Check Pass 6
Wed Nov 22, 1995   09:18:30

Completed P-Loop
Wed Nov 22, 1995   09:18:43

Completed Analysis: anlys1
Wed Nov 22, 1995   09:18:45

Completed Sensitivity Step 3 of 11

Begin Updating Parameters
Wed Nov 22, 1995   09:18:45

Parameters:
   d98                  30.00000%

End Updating Parameters
Wed Nov 22, 1995   09:19:43

Begin Analysis: "anlys1"
Wed Nov 22, 1995   09:19:46

Begin Mass Calculation
Wed Nov 22, 1995   09:19:52

Begin P-Loop Pass 1
Wed Nov 22, 1995   09:19:55

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   09:19:56

Begin Matrix Profile Minimization
Wed Nov 22, 1995   09:19:56

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   09:19:56

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   09:19:58

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   09:19:58

Begin Load Calculations
Wed Nov 22, 1995   09:19:58

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   09:19:59

Begin Convergence Check Pass 1
Wed Nov 22, 1995   09:20:07

Begin P-Loop Pass 2
Wed Nov 22, 1995   09:20:08

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   09:20:08

Begin Matrix Profile Minimization
Wed Nov 22, 1995   09:20:08

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   09:20:08

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   09:20:11

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   09:20:11

Begin Load Calculations
Wed Nov 22, 1995   09:20:12

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   09:20:13

Begin Convergence Check Pass 2
Wed Nov 22, 1995   09:20:23

Begin P-Loop Pass 3
Wed Nov 22, 1995   09:20:24

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   09:20:24

Begin Matrix Profile Minimization
Wed Nov 22, 1995   09:20:24

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   09:20:25

Number of equations: 4287
Average bandwidth:   445.395
Maximum bandwidth:   3915
Size of global matrix profile (mb): 15.2753
Number of terms in global matrix profile: 1909410     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Number of equations: 5325
Average bandwidth:   437.945
Maximum bandwidth:   4809
Size of global matrix profile (mb): 18.6564
Number of terms in global matrix profile: 2332056     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Number of equations: 5325
Average bandwidth:   437.945
Maximum bandwidth:   4809
Size of global matrix profile (mb): 18.6564
Number of terms in global matrix profile: 2332056     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   09:20:34

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   09:20:35

Begin Load Calculations
Wed Nov 22, 1995   09:21:08

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   09:21:10

Begin Convergence Check Pass 3
Wed Nov 22, 1995   09:21:26

Begin P-Loop Pass 4
Wed Nov 22, 1995   09:21:28

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   09:21:28

Begin Matrix Profile Minimization
Wed Nov 22, 1995   09:21:28

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   09:21:29

Number of equations: 7767
Average bandwidth:   378.341
Maximum bandwidth:   3075
Size of global matrix profile (mb): 23.5086
Number of terms in global matrix profile: 2938572     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1933
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.3989

Number of equations: 10647
Average bandwidth:   383.292
Maximum bandwidth:   4182
Size of global matrix profile (mb): 32.6472
Number of terms in global matrix profile: 4080906     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1933
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.3989

Number of equations: 10647
Average bandwidth:   383.292
Maximum bandwidth:   4182
Size of global matrix profile (mb): 32.6472
Number of terms in global matrix profile: 4080906     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1933
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.3989

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   09:21:54

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   09:21:59

Begin Load Calculations
Wed Nov 22, 1995   09:22:57

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   09:23:04

Begin Convergence Check Pass 4
Wed Nov 22, 1995   09:23:34

Begin P-Loop Pass 5
Wed Nov 22, 1995   09:23:37

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   09:23:38

Begin Matrix Profile Minimization
Wed Nov 22, 1995   09:23:38

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   09:23:41

Number of equations: 11589
Average bandwidth:   665.011
Maximum bandwidth:   6495
Size of global matrix profile (mb): 61.6545
Number of terms in global matrix profile: 7706811     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3519
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.2421

Number of equations: 17856
Average bandwidth:   686.169
Maximum bandwidth:   9921
Size of global matrix profile (mb): 98.0179
Number of terms in global matrix profile: 12252240    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3519
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.2421
Using element-by-element static condensation.

Number of equations: 11589
Average bandwidth:   665.011
Maximum bandwidth:   6495
Size of global matrix profile (mb): 61.6545
Number of terms in global matrix profile: 7706811     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3519
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.2421

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   09:24:46

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   09:26:10

Begin Load Calculations
Wed Nov 22, 1995   09:29:42

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   09:30:20

Begin Convergence Check Pass 5
Wed Nov 22, 1995   09:31:19

Begin P-Loop Pass 6
Wed Nov 22, 1995   09:31:26

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   09:31:27

Begin Matrix Profile Minimization
Wed Nov 22, 1995   09:31:27

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   09:31:34

Number of equations: 14637
Average bandwidth:   1309.32
Maximum bandwidth:   12819
Size of global matrix profile (mb): 153.316
Number of terms in global matrix profile: 19164525    
Minimum recommended bsram under ideal conditions: 14

Size of element file (mb): 41.124
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 155.773

Number of equations: 24642
Average bandwidth:   1351.32
Maximum bandwidth:   22059
Size of global matrix profile (mb): 266.393
Number of terms in global matrix profile: 33299127    
Minimum recommended bsram under ideal conditions: 15

Size of element file (mb): 41.124
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 155.773
Using element-by-element static condensation.

Number of equations: 14637
Average bandwidth:   1309.32
Maximum bandwidth:   12819
Size of global matrix profile (mb): 153.316
Number of terms in global matrix profile: 19164525    
Minimum recommended bsram under ideal conditions: 14

Size of element file (mb): 41.124
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 155.773

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   09:33:45

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   09:37:12

Begin Load Calculations
Wed Nov 22, 1995   09:55:07

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   09:56:36

Begin Convergence Check Pass 6
Wed Nov 22, 1995   09:58:05

Completed P-Loop
Wed Nov 22, 1995   09:58:19

Completed Analysis: anlys1
Wed Nov 22, 1995   09:58:20

Completed Sensitivity Step 4 of 11

Begin Updating Parameters
Wed Nov 22, 1995   09:58:21

Parameters:
   d98                  40.00000%

End Updating Parameters
Wed Nov 22, 1995   09:59:32

Begin Analysis: "anlys1"
Wed Nov 22, 1995   09:59:36

Begin Mass Calculation
Wed Nov 22, 1995   09:59:43

Begin P-Loop Pass 1
Wed Nov 22, 1995   09:59:47

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   09:59:48

Begin Matrix Profile Minimization
Wed Nov 22, 1995   09:59:48

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   09:59:48

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   09:59:50

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   09:59:50

Begin Load Calculations
Wed Nov 22, 1995   09:59:50

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   09:59:52

Begin Convergence Check Pass 1
Wed Nov 22, 1995   10:00:00

Begin P-Loop Pass 2
Wed Nov 22, 1995   10:00:01

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:00:01

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:00:01

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   10:00:01

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   10:00:04

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   10:00:05

Begin Load Calculations
Wed Nov 22, 1995   10:00:05

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:00:06

Begin Convergence Check Pass 2
Wed Nov 22, 1995   10:00:17

Begin P-Loop Pass 3
Wed Nov 22, 1995   10:00:18

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:00:19

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:00:19

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   10:00:19

Number of equations: 4287
Average bandwidth:   445.395
Maximum bandwidth:   3915
Size of global matrix profile (mb): 15.2753
Number of terms in global matrix profile: 1909410     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Number of equations: 5325
Average bandwidth:   437.945
Maximum bandwidth:   4809
Size of global matrix profile (mb): 18.6564
Number of terms in global matrix profile: 2332056     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Number of equations: 5325
Average bandwidth:   437.945
Maximum bandwidth:   4809
Size of global matrix profile (mb): 18.6564
Number of terms in global matrix profile: 2332056     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   10:00:30

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   10:00:31

Begin Load Calculations
Wed Nov 22, 1995   10:01:05

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:01:07

Begin Convergence Check Pass 3
Wed Nov 22, 1995   10:01:24

Begin P-Loop Pass 4
Wed Nov 22, 1995   10:01:25

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:01:26

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:01:26

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   10:01:27

Number of equations: 7755
Average bandwidth:   392.816
Maximum bandwidth:   3531
Size of global matrix profile (mb): 24.3703
Number of terms in global matrix profile: 3046287     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.158
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.265

Number of equations: 10638
Average bandwidth:   396.743
Maximum bandwidth:   4767
Size of global matrix profile (mb): 33.7644
Number of terms in global matrix profile: 4220550     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.158
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.265

Number of equations: 10638
Average bandwidth:   396.743
Maximum bandwidth:   4767
Size of global matrix profile (mb): 33.7644
Number of terms in global matrix profile: 4220550     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.158
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.265

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   10:01:54

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   10:02:01

Begin Load Calculations
Wed Nov 22, 1995   10:03:02

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:03:09

Begin Convergence Check Pass 4
Wed Nov 22, 1995   10:03:42

Begin P-Loop Pass 5
Wed Nov 22, 1995   10:03:46

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:03:46

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:03:46

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   10:03:50

Number of equations: 11538
Average bandwidth:   646.532
Maximum bandwidth:   6186
Size of global matrix profile (mb): 59.6775
Number of terms in global matrix profile: 7459686     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.1097
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.3245

Number of equations: 17751
Average bandwidth:   668.944
Maximum bandwidth:   9456
Size of global matrix profile (mb): 94.9954
Number of terms in global matrix profile: 11874426    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.1097
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.3245
Using element-by-element static condensation.

Number of equations: 11538
Average bandwidth:   646.532
Maximum bandwidth:   6186
Size of global matrix profile (mb): 59.6775
Number of terms in global matrix profile: 7459686     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.1097
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.3245

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   10:04:52

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   10:06:19

Begin Load Calculations
Wed Nov 22, 1995   10:09:37

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:10:16

Begin Convergence Check Pass 5
Wed Nov 22, 1995   10:11:16

Begin P-Loop Pass 6
Wed Nov 22, 1995   10:11:23

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:11:23

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:11:23

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   10:11:31

Number of equations: 14580
Average bandwidth:   1305.79
Maximum bandwidth:   12792
Size of global matrix profile (mb): 152.307
Number of terms in global matrix profile: 19038375    
Minimum recommended bsram under ideal conditions: 14

Size of element file (mb): 40.7971
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 154.535

Number of equations: 24531
Average bandwidth:   1349.6
Maximum bandwidth:   22008
Size of global matrix profile (mb): 264.857
Number of terms in global matrix profile: 33107088    
Minimum recommended bsram under ideal conditions: 15

Size of element file (mb): 40.7971
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 154.535
Using element-by-element static condensation.

Number of equations: 14580
Average bandwidth:   1305.79
Maximum bandwidth:   12792
Size of global matrix profile (mb): 152.307
Number of terms in global matrix profile: 19038375    
Minimum recommended bsram under ideal conditions: 14

Size of element file (mb): 40.7971
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 154.535

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   10:13:38

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   10:17:13

Begin Load Calculations
Wed Nov 22, 1995   10:34:50

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:36:20

Begin Convergence Check Pass 6
Wed Nov 22, 1995   10:37:51

Completed P-Loop
Wed Nov 22, 1995   10:38:04

Completed Analysis: anlys1
Wed Nov 22, 1995   10:38:06

Completed Sensitivity Step 5 of 11

Begin Updating Parameters
Wed Nov 22, 1995   10:38:06

Parameters:
   d98                  50.00000%

End Updating Parameters
Wed Nov 22, 1995   10:39:26

Begin Analysis: "anlys1"
Wed Nov 22, 1995   10:39:30

Begin Mass Calculation
Wed Nov 22, 1995   10:39:38

Begin P-Loop Pass 1
Wed Nov 22, 1995   10:39:41

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:39:44

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:39:44

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   10:39:44

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   10:39:46

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   10:39:46

Begin Load Calculations
Wed Nov 22, 1995   10:39:46

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:39:48

Begin Convergence Check Pass 1
Wed Nov 22, 1995   10:39:56

Begin P-Loop Pass 2
Wed Nov 22, 1995   10:39:57

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:39:58

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:39:58

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   10:39:58

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   10:40:00

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   10:40:01

Begin Load Calculations
Wed Nov 22, 1995   10:40:01

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:40:02

Begin Convergence Check Pass 2
Wed Nov 22, 1995   10:40:13

Begin P-Loop Pass 3
Wed Nov 22, 1995   10:40:15

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:40:15

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:40:15

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   10:40:16

Number of equations: 4287
Average bandwidth:   445.395
Maximum bandwidth:   3915
Size of global matrix profile (mb): 15.2753
Number of terms in global matrix profile: 1909410     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Number of equations: 5325
Average bandwidth:   437.945
Maximum bandwidth:   4809
Size of global matrix profile (mb): 18.6564
Number of terms in global matrix profile: 2332056     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Number of equations: 5325
Average bandwidth:   437.945
Maximum bandwidth:   4809
Size of global matrix profile (mb): 18.6564
Number of terms in global matrix profile: 2332056     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.13789
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.6738

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   10:40:26

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   10:40:27

Begin Load Calculations
Wed Nov 22, 1995   10:41:01

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:41:03

Begin Convergence Check Pass 3
Wed Nov 22, 1995   10:41:22

Begin P-Loop Pass 4
Wed Nov 22, 1995   10:41:24

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:41:24

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:41:24

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   10:41:26

Number of equations: 7743
Average bandwidth:   374.793
Maximum bandwidth:   3531
Size of global matrix profile (mb): 23.2162
Number of terms in global matrix profile: 2902020     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1372
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.1863

Number of equations: 10626
Average bandwidth:   380.438
Maximum bandwidth:   4767
Size of global matrix profile (mb): 32.3403
Number of terms in global matrix profile: 4042533     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1372
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.1863

Number of equations: 10626
Average bandwidth:   380.438
Maximum bandwidth:   4767
Size of global matrix profile (mb): 32.3403
Number of terms in global matrix profile: 4042533     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1372
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.1863

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   10:41:53

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   10:42:01

Begin Load Calculations
Wed Nov 22, 1995   10:42:57

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:43:05

Begin Convergence Check Pass 4
Wed Nov 22, 1995   10:43:42

Begin P-Loop Pass 5
Wed Nov 22, 1995   10:43:46

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:43:46

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:43:46

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   10:43:50

Number of equations: 11541
Average bandwidth:   658.256
Maximum bandwidth:   6873
Size of global matrix profile (mb): 60.7755
Number of terms in global matrix profile: 7596933     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.1324
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.4105

Number of equations: 17754
Average bandwidth:   683.026
Maximum bandwidth:   10503
Size of global matrix profile (mb): 97.0115
Number of terms in global matrix profile: 12126441    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.1324
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.4105
Using element-by-element static condensation.

Number of equations: 11541
Average bandwidth:   658.256
Maximum bandwidth:   6873
Size of global matrix profile (mb): 60.7755
Number of terms in global matrix profile: 7596933     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.1324
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.4105

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   10:44:59

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   10:46:24

Begin Load Calculations
Wed Nov 22, 1995   10:49:54

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   10:50:32

Begin Convergence Check Pass 5
Wed Nov 22, 1995   10:51:36

Begin P-Loop Pass 6
Wed Nov 22, 1995   10:51:44

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   10:51:45

Begin Matrix Profile Minimization
Wed Nov 22, 1995   10:51:45

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   10:51:52

Number of equations: 14586
Average bandwidth:   1165.02
Maximum bandwidth:   12168
Size of global matrix profile (mb): 135.943
Number of terms in global matrix profile: 16992912    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 40.8214
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 154.627

Number of equations: 24537
Average bandwidth:   1207.54
Maximum bandwidth:   20853
Size of global matrix profile (mb): 237.034
Number of terms in global matrix profile: 29629302    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 40.8214
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 154.627
Using element-by-element static condensation.

Number of equations: 14586
Average bandwidth:   1165.02
Maximum bandwidth:   12168
Size of global matrix profile (mb): 135.943
Number of terms in global matrix profile: 16992912    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 40.8214
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 154.627

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   10:54:02

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   10:57:17

Begin Load Calculations
Wed Nov 22, 1995   11:10:57

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:12:24

Begin Convergence Check Pass 6
Wed Nov 22, 1995   11:13:56

Completed P-Loop
Wed Nov 22, 1995   11:14:11

Completed Analysis: anlys1
Wed Nov 22, 1995   11:14:12

Completed Sensitivity Step 6 of 11

Begin Updating Parameters
Wed Nov 22, 1995   11:14:13

Parameters:
   d98                  60.00000%

End Updating Parameters
Wed Nov 22, 1995   11:15:43

Begin Analysis: "anlys1"
Wed Nov 22, 1995   11:15:47

Begin Mass Calculation
Wed Nov 22, 1995   11:15:56

Begin P-Loop Pass 1
Wed Nov 22, 1995   11:16:00

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:16:01

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:16:01

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   11:16:01

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   11:16:03

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   11:16:03

Begin Load Calculations
Wed Nov 22, 1995   11:16:03

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:16:05

Begin Convergence Check Pass 1
Wed Nov 22, 1995   11:16:15

Begin P-Loop Pass 2
Wed Nov 22, 1995   11:16:16

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:16:17

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:16:17

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   11:16:17

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   11:16:21

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   11:16:21

Begin Load Calculations
Wed Nov 22, 1995   11:16:22

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:16:23

Begin Convergence Check Pass 2
Wed Nov 22, 1995   11:16:36

Begin P-Loop Pass 3
Wed Nov 22, 1995   11:16:38

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:16:38

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:16:38

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   11:16:39

Number of equations: 4272
Average bandwidth:   413.931
Maximum bandwidth:   4047
Size of global matrix profile (mb): 14.1465
Number of terms in global matrix profile: 1768314     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.10786
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.5601

Number of equations: 5289
Average bandwidth:   408.336
Maximum bandwidth:   4953
Size of global matrix profile (mb): 17.2775
Number of terms in global matrix profile: 2159688     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.10786
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.5601

Number of equations: 5289
Average bandwidth:   408.336
Maximum bandwidth:   4953
Size of global matrix profile (mb): 17.2775
Number of terms in global matrix profile: 2159688     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.10786
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.5601

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   11:16:49

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   11:16:51

Begin Load Calculations
Wed Nov 22, 1995   11:17:19

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:17:21

Begin Convergence Check Pass 3
Wed Nov 22, 1995   11:17:44

Begin P-Loop Pass 4
Wed Nov 22, 1995   11:17:46

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:17:47

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:17:47

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   11:17:48

Number of equations: 7743
Average bandwidth:   388.179
Maximum bandwidth:   3306
Size of global matrix profile (mb): 24.0454
Number of terms in global matrix profile: 3005673     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1282
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.1523

Number of equations: 10617
Average bandwidth:   393.246
Maximum bandwidth:   4413
Size of global matrix profile (mb): 33.4008
Number of terms in global matrix profile: 4175094     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1282
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.1523

Number of equations: 10617
Average bandwidth:   393.246
Maximum bandwidth:   4413
Size of global matrix profile (mb): 33.4008
Number of terms in global matrix profile: 4175094     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1282
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 42.1523

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   11:18:17

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   11:18:24

Begin Load Calculations
Wed Nov 22, 1995   11:19:24

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:19:32

Begin Convergence Check Pass 4
Wed Nov 22, 1995   11:20:15

Begin P-Loop Pass 5
Wed Nov 22, 1995   11:20:19

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:20:20

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:20:20

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   11:20:23

Number of equations: 11562
Average bandwidth:   662.783
Maximum bandwidth:   6612
Size of global matrix profile (mb): 61.3048
Number of terms in global matrix profile: 7663098     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.2181
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.7354

Number of equations: 17796
Average bandwidth:   683.454
Maximum bandwidth:   10059
Size of global matrix profile (mb): 97.302
Number of terms in global matrix profile: 12162750    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.2181
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.7354
Using element-by-element static condensation.

Number of equations: 11562
Average bandwidth:   662.783
Maximum bandwidth:   6612
Size of global matrix profile (mb): 61.3048
Number of terms in global matrix profile: 7663098     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.2181
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.7354

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   11:21:32

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   11:22:56

Begin Load Calculations
Wed Nov 22, 1995   11:26:27

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:27:06

Begin Convergence Check Pass 5
Wed Nov 22, 1995   11:28:14

Begin P-Loop Pass 6
Wed Nov 22, 1995   11:28:21

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:28:22

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:28:22

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   11:28:30

Number of equations: 14553
Average bandwidth:   1139.5
Maximum bandwidth:   12237
Size of global matrix profile (mb): 132.665
Number of terms in global matrix profile: 16583148    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 40.6259
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 153.886

Number of equations: 24459
Average bandwidth:   1180.38
Maximum bandwidth:   20919
Size of global matrix profile (mb): 230.967
Number of terms in global matrix profile: 28870869    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 40.6259
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 153.886
Using element-by-element static condensation.

Number of equations: 14553
Average bandwidth:   1139.5
Maximum bandwidth:   12237
Size of global matrix profile (mb): 132.665
Number of terms in global matrix profile: 16583148    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 40.6259
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 153.886

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   11:30:38

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   11:33:53

Begin Load Calculations
Wed Nov 22, 1995   11:47:15

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:48:38

Begin Convergence Check Pass 6
Wed Nov 22, 1995   11:50:15

Completed P-Loop
Wed Nov 22, 1995   11:50:30

Completed Analysis: anlys1
Wed Nov 22, 1995   11:50:33

Completed Sensitivity Step 7 of 11

Begin Updating Parameters
Wed Nov 22, 1995   11:50:34

Parameters:
   d98                  70.00000%

End Updating Parameters
Wed Nov 22, 1995   11:52:06

Begin Analysis: "anlys1"
Wed Nov 22, 1995   11:52:12

Begin Mass Calculation
Wed Nov 22, 1995   11:52:20

Begin P-Loop Pass 1
Wed Nov 22, 1995   11:52:24

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:52:26

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:52:26

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   11:52:26

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   11:52:28

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   11:52:28

Begin Load Calculations
Wed Nov 22, 1995   11:52:29

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:52:30

Begin Convergence Check Pass 1
Wed Nov 22, 1995   11:52:40

Begin P-Loop Pass 2
Wed Nov 22, 1995   11:52:41

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:52:42

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:52:42

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   11:52:42

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   11:52:45

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   11:52:46

Begin Load Calculations
Wed Nov 22, 1995   11:52:46

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:52:47

Begin Convergence Check Pass 2
Wed Nov 22, 1995   11:52:58

Begin P-Loop Pass 3
Wed Nov 22, 1995   11:52:59

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:53:00

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:53:00

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   11:53:00

Number of equations: 4272
Average bandwidth:   413.931
Maximum bandwidth:   4047
Size of global matrix profile (mb): 14.1465
Number of terms in global matrix profile: 1768314     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.10786
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.5601

Number of equations: 5289
Average bandwidth:   408.336
Maximum bandwidth:   4953
Size of global matrix profile (mb): 17.2775
Number of terms in global matrix profile: 2159688     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.10786
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.5601

Number of equations: 5289
Average bandwidth:   408.336
Maximum bandwidth:   4953
Size of global matrix profile (mb): 17.2775
Number of terms in global matrix profile: 2159688     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.10786
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.5601

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   11:53:10

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   11:53:11

Begin Load Calculations
Wed Nov 22, 1995   11:53:40

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:53:42

Begin Convergence Check Pass 3
Wed Nov 22, 1995   11:54:06

Begin P-Loop Pass 4
Wed Nov 22, 1995   11:54:08

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:54:09

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:54:09

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   11:54:10

Number of equations: 7770
Average bandwidth:   383.344
Maximum bandwidth:   3306
Size of global matrix profile (mb): 23.8287
Number of terms in global matrix profile: 2978583     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.234
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5531

Number of equations: 10686
Average bandwidth:   388.184
Maximum bandwidth:   4413
Size of global matrix profile (mb): 33.1851
Number of terms in global matrix profile: 4148133     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.234
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5531

Number of equations: 10686
Average bandwidth:   388.184
Maximum bandwidth:   4413
Size of global matrix profile (mb): 33.1851
Number of terms in global matrix profile: 4148133     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.234
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5531

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   11:54:38

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   11:54:47

Begin Load Calculations
Wed Nov 22, 1995   11:55:45

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   11:55:53

Begin Convergence Check Pass 4
Wed Nov 22, 1995   11:56:36

Begin P-Loop Pass 5
Wed Nov 22, 1995   11:56:40

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   11:56:41

Begin Matrix Profile Minimization
Wed Nov 22, 1995   11:56:41

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   11:56:46

Number of equations: 11610
Average bandwidth:   651.84
Maximum bandwidth:   6195
Size of global matrix profile (mb): 60.5429
Number of terms in global matrix profile: 7567857     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3698
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.31

Number of equations: 17868
Average bandwidth:   673.746
Maximum bandwidth:   9453
Size of global matrix profile (mb): 96.308
Number of terms in global matrix profile: 12038496    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3698
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.31
Using element-by-element static condensation.

Number of equations: 11610
Average bandwidth:   651.84
Maximum bandwidth:   6195
Size of global matrix profile (mb): 60.5429
Number of terms in global matrix profile: 7567857     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3698
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.31

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   11:57:56

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   11:59:20

Begin Load Calculations
Wed Nov 22, 1995   12:02:49

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   12:03:28

Begin Convergence Check Pass 5
Wed Nov 22, 1995   12:04:53

Begin P-Loop Pass 6
Wed Nov 22, 1995   12:05:00

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   12:05:02

Begin Matrix Profile Minimization
Wed Nov 22, 1995   12:05:02

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   12:05:09

Number of equations: 14478
Average bandwidth:   1148.11
Maximum bandwidth:   13239
Size of global matrix profile (mb): 132.979
Number of terms in global matrix profile: 16622391    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 40.1648
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 152.139

Number of equations: 24324
Average bandwidth:   1186.55
Maximum bandwidth:   22242
Size of global matrix profile (mb): 230.894
Number of terms in global matrix profile: 28861698    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 40.1648
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 152.139
Using element-by-element static condensation.

Number of equations: 14478
Average bandwidth:   1148.11
Maximum bandwidth:   13239
Size of global matrix profile (mb): 132.979
Number of terms in global matrix profile: 16622391    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 40.1648
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 152.139

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   12:07:18

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   12:10:22

Begin Load Calculations
Wed Nov 22, 1995   12:23:38

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   12:25:01

Begin Convergence Check Pass 6
Wed Nov 22, 1995   12:26:47

Completed P-Loop
Wed Nov 22, 1995   12:27:06

Completed Analysis: anlys1
Wed Nov 22, 1995   12:27:08

Completed Sensitivity Step 8 of 11

Begin Updating Parameters
Wed Nov 22, 1995   12:27:10

Parameters:
   d98                  80.00000%

End Updating Parameters
Wed Nov 22, 1995   12:28:51

Begin Analysis: "anlys1"
Wed Nov 22, 1995   12:28:56

Begin Mass Calculation
Wed Nov 22, 1995   12:29:06

Begin P-Loop Pass 1
Wed Nov 22, 1995   12:29:11

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   12:29:12

Begin Matrix Profile Minimization
Wed Nov 22, 1995   12:29:12

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   12:29:12

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   12:29:15

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   12:29:15

Begin Load Calculations
Wed Nov 22, 1995   12:29:15

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   12:29:16

Begin Convergence Check Pass 1
Wed Nov 22, 1995   12:29:25

Begin P-Loop Pass 2
Wed Nov 22, 1995   12:29:26

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   12:29:27

Begin Matrix Profile Minimization
Wed Nov 22, 1995   12:29:27

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   12:29:27

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   12:29:30

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   12:29:30

Begin Load Calculations
Wed Nov 22, 1995   12:29:31

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   12:29:32

Begin Convergence Check Pass 2
Wed Nov 22, 1995   12:29:46

Begin P-Loop Pass 3
Wed Nov 22, 1995   12:29:47

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   12:29:48

Begin Matrix Profile Minimization
Wed Nov 22, 1995   12:29:48

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   12:29:48

Number of equations: 4254
Average bandwidth:   416.173
Maximum bandwidth:   4032
Size of global matrix profile (mb): 14.1632
Number of terms in global matrix profile: 1770402     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Number of equations: 5247
Average bandwidth:   409.962
Maximum bandwidth:   4914
Size of global matrix profile (mb): 17.2086
Number of terms in global matrix profile: 2151072     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Number of equations: 5247
Average bandwidth:   409.962
Maximum bandwidth:   4914
Size of global matrix profile (mb): 17.2086
Number of terms in global matrix profile: 2151072     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   12:29:59

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   12:30:00

Begin Load Calculations
Wed Nov 22, 1995   12:30:29

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   12:30:31

Begin Convergence Check Pass 3
Wed Nov 22, 1995   12:30:53

Begin P-Loop Pass 4
Wed Nov 22, 1995   12:30:56

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   12:30:57

Begin Matrix Profile Minimization
Wed Nov 22, 1995   12:30:57

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   12:30:58

Number of equations: 7770
Average bandwidth:   409.873
Maximum bandwidth:   6996
Size of global matrix profile (mb): 25.4777
Number of terms in global matrix profile: 3184710     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.2362
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5615

Number of equations: 10686
Average bandwidth:   414.606
Maximum bandwidth:   9522
Size of global matrix profile (mb): 35.4438
Number of terms in global matrix profile: 4430481     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.2362
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5615

Number of equations: 10686
Average bandwidth:   414.606
Maximum bandwidth:   9522
Size of global matrix profile (mb): 35.4438
Number of terms in global matrix profile: 4430481     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.2362
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5615

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   12:31:26

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   12:31:34

Begin Load Calculations
Wed Nov 22, 1995   12:32:48

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   12:33:04

Begin Convergence Check Pass 4
Wed Nov 22, 1995   12:33:44

Begin P-Loop Pass 5
Wed Nov 22, 1995   12:33:49

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   12:33:50

Begin Matrix Profile Minimization
Wed Nov 22, 1995   12:33:50

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   12:33:54

Number of equations: 11628
Average bandwidth:   643.011
Maximum bandwidth:   5880
Size of global matrix profile (mb): 59.8154
Number of terms in global matrix profile: 7476930     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.4389
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.5715

Number of equations: 17895
Average bandwidth:   664.269
Maximum bandwidth:   9024
Size of global matrix profile (mb): 95.0968
Number of terms in global matrix profile: 11887098    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.4389
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.5715
Using element-by-element static condensation.

Number of equations: 11628
Average bandwidth:   643.011
Maximum bandwidth:   5880
Size of global matrix profile (mb): 59.8154
Number of terms in global matrix profile: 7476930     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.4389
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.5715

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   12:35:04

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   12:36:30

Begin Load Calculations
Wed Nov 22, 1995   12:39:49

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   12:40:31

Begin Convergence Check Pass 5
Wed Nov 22, 1995   12:41:59

Begin P-Loop Pass 6
Wed Nov 22, 1995   12:42:07

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   12:42:09

Begin Matrix Profile Minimization
Wed Nov 22, 1995   12:42:09

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   12:42:16

Number of equations: 14469
Average bandwidth:   1161.66
Maximum bandwidth:   13059
Size of global matrix profile (mb): 134.464
Number of terms in global matrix profile: 16807998    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 40.1093
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 151.929

Number of equations: 24294
Average bandwidth:   1199.34
Maximum bandwidth:   21957
Size of global matrix profile (mb): 233.093
Number of terms in global matrix profile: 29136687    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 40.1093
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 151.929
Using element-by-element static condensation.

Number of equations: 14469
Average bandwidth:   1161.66
Maximum bandwidth:   13059
Size of global matrix profile (mb): 134.464
Number of terms in global matrix profile: 16807998    
Minimum recommended bsram under ideal conditions: 11

Size of element file (mb): 40.1093
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 151.929

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   12:44:22

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   12:47:29

Begin Load Calculations
Wed Nov 22, 1995   13:01:47

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:03:12

Begin Convergence Check Pass 6
Wed Nov 22, 1995   13:05:02

Completed P-Loop
Wed Nov 22, 1995   13:05:20

Completed Analysis: anlys1
Wed Nov 22, 1995   13:05:22

Completed Sensitivity Step 9 of 11

Begin Updating Parameters
Wed Nov 22, 1995   13:05:23

Parameters:
   d98                  90.00000%

End Updating Parameters
Wed Nov 22, 1995   13:07:34

Begin Analysis: "anlys1"
Wed Nov 22, 1995   13:07:40

Begin Mass Calculation
Wed Nov 22, 1995   13:07:49

Begin P-Loop Pass 1
Wed Nov 22, 1995   13:07:53

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:07:55

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:07:55

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   13:07:55

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   13:07:58

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   13:07:58

Begin Load Calculations
Wed Nov 22, 1995   13:07:58

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:08:00

Begin Convergence Check Pass 1
Wed Nov 22, 1995   13:08:12

Begin P-Loop Pass 2
Wed Nov 22, 1995   13:08:13

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:08:14

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:08:14

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   13:08:14

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   13:08:17

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   13:08:17

Begin Load Calculations
Wed Nov 22, 1995   13:08:18

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:08:19

Begin Convergence Check Pass 2
Wed Nov 22, 1995   13:08:30

Begin P-Loop Pass 3
Wed Nov 22, 1995   13:08:31

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:08:31

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:08:31

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   13:08:32

Number of equations: 4254
Average bandwidth:   416.173
Maximum bandwidth:   4032
Size of global matrix profile (mb): 14.1632
Number of terms in global matrix profile: 1770402     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Number of equations: 5247
Average bandwidth:   409.962
Maximum bandwidth:   4914
Size of global matrix profile (mb): 17.2086
Number of terms in global matrix profile: 2151072     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Number of equations: 5247
Average bandwidth:   409.962
Maximum bandwidth:   4914
Size of global matrix profile (mb): 17.2086
Number of terms in global matrix profile: 2151072     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   13:08:43

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   13:08:44

Begin Load Calculations
Wed Nov 22, 1995   13:09:12

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:09:14

Begin Convergence Check Pass 3
Wed Nov 22, 1995   13:09:38

Begin P-Loop Pass 4
Wed Nov 22, 1995   13:09:40

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:09:42

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:09:42

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   13:09:43

Number of equations: 7764
Average bandwidth:   394.247
Maximum bandwidth:   6981
Size of global matrix profile (mb): 24.4874
Number of terms in global matrix profile: 3060930     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.2305
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5399

Number of equations: 10683
Average bandwidth:   399.679
Maximum bandwidth:   9510
Size of global matrix profile (mb): 34.1582
Number of terms in global matrix profile: 4269771     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.2305
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5399

Number of equations: 10683
Average bandwidth:   399.679
Maximum bandwidth:   9510
Size of global matrix profile (mb): 34.1582
Number of terms in global matrix profile: 4269771     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.2305
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.5399

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   13:10:11

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   13:10:22

Begin Load Calculations
Wed Nov 22, 1995   13:11:30

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:11:45

Begin Convergence Check Pass 4
Wed Nov 22, 1995   13:12:26

Begin P-Loop Pass 5
Wed Nov 22, 1995   13:12:30

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:12:31

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:12:31

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   13:12:34

Number of equations: 11595
Average bandwidth:   635.938
Maximum bandwidth:   5754
Size of global matrix profile (mb): 58.9896
Number of terms in global matrix profile: 7373706     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3318
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.166

Number of equations: 17856
Average bandwidth:   656.677
Maximum bandwidth:   8814
Size of global matrix profile (mb): 93.805
Number of terms in global matrix profile: 11725623    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3318
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.166
Using element-by-element static condensation.

Number of equations: 11595
Average bandwidth:   635.938
Maximum bandwidth:   5754
Size of global matrix profile (mb): 58.9896
Number of terms in global matrix profile: 7373706     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.3318
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 92.166

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   13:13:44

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   13:15:10

Begin Load Calculations
Wed Nov 22, 1995   13:18:35

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:19:15

Begin Convergence Check Pass 5
Wed Nov 22, 1995   13:20:41

Begin P-Loop Pass 6
Wed Nov 22, 1995   13:20:49

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:20:50

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:20:50

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   13:20:57

Number of equations: 14448
Average bandwidth:   1199.26
Maximum bandwidth:   12981
Size of global matrix profile (mb): 138.616
Number of terms in global matrix profile: 17326941    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 40.0096
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 151.552

Number of equations: 24255
Average bandwidth:   1228.04
Maximum bandwidth:   21783
Size of global matrix profile (mb): 238.289
Number of terms in global matrix profile: 29786166    
Minimum recommended bsram under ideal conditions: 13

Size of element file (mb): 40.0096
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 151.552
Using element-by-element static condensation.

Number of equations: 14448
Average bandwidth:   1199.26
Maximum bandwidth:   12981
Size of global matrix profile (mb): 138.616
Number of terms in global matrix profile: 17326941    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 40.0096
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 151.552

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   13:23:08

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   13:26:15

Begin Load Calculations
Wed Nov 22, 1995   13:41:23

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:42:51

Begin Convergence Check Pass 6
Wed Nov 22, 1995   13:44:47

Completed P-Loop
Wed Nov 22, 1995   13:45:07

Completed Analysis: anlys1
Wed Nov 22, 1995   13:45:09

Completed Sensitivity Step 10 of 11

Begin Updating Parameters
Wed Nov 22, 1995   13:45:10

Parameters:
   d98                 100.00000%

End Updating Parameters
Wed Nov 22, 1995   13:47:16

Begin Analysis: "anlys1"
Wed Nov 22, 1995   13:47:21

Begin Mass Calculation
Wed Nov 22, 1995   13:47:29

Begin P-Loop Pass 1
Wed Nov 22, 1995   13:47:33

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:47:36

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:47:36

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   13:47:37

Number of equations: 306
Average bandwidth:   28.3235
Maximum bandwidth:   114
Size of global matrix profile (kb): 69.336
Number of terms in global matrix profile: 8667        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 164.736
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   13:47:39

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   13:47:39

Begin Load Calculations
Wed Nov 22, 1995   13:47:39

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:47:41

Begin Convergence Check Pass 1
Wed Nov 22, 1995   13:47:50

Begin P-Loop Pass 2
Wed Nov 22, 1995   13:47:51

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:47:51

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:47:51

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   13:47:51

Number of equations: 1611
Average bandwidth:   96.0112
Maximum bandwidth:   486
Size of global matrix profile (mb): 1.23739
Number of terms in global matrix profile: 154674      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1701
Average bandwidth:   96.0423
Maximum bandwidth:   501
Size of global matrix profile (mb): 1.30694
Number of terms in global matrix profile: 163368      
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 982.08
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   13:47:54

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   13:47:55

Begin Load Calculations
Wed Nov 22, 1995   13:47:55

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:47:56

Begin Convergence Check Pass 2
Wed Nov 22, 1995   13:48:08

Begin P-Loop Pass 3
Wed Nov 22, 1995   13:48:09

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:48:10

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:48:10

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   13:48:10

Number of equations: 4254
Average bandwidth:   416.173
Maximum bandwidth:   4032
Size of global matrix profile (mb): 14.1632
Number of terms in global matrix profile: 1770402     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Number of equations: 5247
Average bandwidth:   409.962
Maximum bandwidth:   4914
Size of global matrix profile (mb): 17.2086
Number of terms in global matrix profile: 2151072     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Number of equations: 5247
Average bandwidth:   409.962
Maximum bandwidth:   4914
Size of global matrix profile (mb): 17.2086
Number of terms in global matrix profile: 2151072     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.0741
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4322

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   13:48:20

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   13:48:21

Begin Load Calculations
Wed Nov 22, 1995   13:48:50

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:48:52

Begin Convergence Check Pass 3
Wed Nov 22, 1995   13:49:16

Begin P-Loop Pass 4
Wed Nov 22, 1995   13:49:18

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:49:19

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:49:19

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   13:49:20

Number of equations: 7752
Average bandwidth:   388.329
Maximum bandwidth:   6855
Size of global matrix profile (mb): 24.0826
Number of terms in global matrix profile: 3010326     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1977
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.4156

Number of equations: 10668
Average bandwidth:   392.368
Maximum bandwidth:   9345
Size of global matrix profile (mb): 33.4862
Number of terms in global matrix profile: 4185780     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1977
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.4156

Number of equations: 10668
Average bandwidth:   392.368
Maximum bandwidth:   9345
Size of global matrix profile (mb): 33.4862
Number of terms in global matrix profile: 4185780     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.1977
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.4156

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   13:49:48

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   13:49:59

Begin Load Calculations
Wed Nov 22, 1995   13:51:05

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:51:19

Begin Convergence Check Pass 4
Wed Nov 22, 1995   13:52:04

Begin P-Loop Pass 5
Wed Nov 22, 1995   13:52:14

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   13:52:15

Begin Matrix Profile Minimization
Wed Nov 22, 1995   13:52:15

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   13:52:18

Number of equations: 11568
Average bandwidth:   649.709
Maximum bandwidth:   6534
Size of global matrix profile (mb): 60.1267
Number of terms in global matrix profile: 7515834     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.2176
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.7334

Number of equations: 17790
Average bandwidth:   673.344
Maximum bandwidth:   10044
Size of global matrix profile (mb): 95.8303
Number of terms in global matrix profile: 11978787    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.2176
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.7334
Using element-by-element static condensation.

Number of equations: 11568
Average bandwidth:   649.709
Maximum bandwidth:   6534
Size of global matrix profile (mb): 60.1267
Number of terms in global matrix profile: 7515834     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 24.2176
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 91.7334

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   13:53:28

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   13:54:54

Begin Load Calculations
Wed Nov 22, 1995   13:58:21

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   13:59:00

Begin Convergence Check Pass 5
Wed Nov 22, 1995   14:00:28

Begin P-Loop Pass 6
Wed Nov 22, 1995   14:00:37

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   14:00:39

Begin Matrix Profile Minimization
Wed Nov 22, 1995   14:00:40

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   14:00:47

Number of equations: 14388
Average bandwidth:   1193.35
Maximum bandwidth:   13248
Size of global matrix profile (mb): 137.359
Number of terms in global matrix profile: 17169924    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 39.7468
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 150.556

Number of equations: 24132
Average bandwidth:   1221.45
Maximum bandwidth:   22263
Size of global matrix profile (mb): 235.808
Number of terms in global matrix profile: 29476059    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 39.7468
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 150.556
Using element-by-element static condensation.

Number of equations: 14388
Average bandwidth:   1193.35
Maximum bandwidth:   13248
Size of global matrix profile (mb): 137.359
Number of terms in global matrix profile: 17169924    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 39.7468
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 150.556

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   14:02:52

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   14:05:55

Begin Load Calculations
Wed Nov 22, 1995   14:20:17

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   14:21:45

Begin Convergence Check Pass 6
Wed Nov 22, 1995   14:23:44

Completed P-Loop
Wed Nov 22, 1995   14:24:03

Completed Analysis: anlys1
Wed Nov 22, 1995   14:24:04

Completed Sensitivity Step 11 of 11

Completed Global Sensitivity Study
