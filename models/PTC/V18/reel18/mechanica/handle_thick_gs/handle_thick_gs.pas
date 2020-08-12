------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 16.0(58)
Diagnostic Log
Thu Apr  4, 1996   12:46:19
------------------------------------------------------------

Begin Updating Parameters
Thu Apr  4, 1996   12:46:20

Parameters:
   thickness             0.00000%

End Updating Parameters
Thu Apr  4, 1996   12:48:38

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:48:41

Using Block Solver
Thu Apr  4, 1996   12:48:41

Using element level matrix-vector multiplies
Thu Apr  4, 1996   12:48:41

Geometry Integration Turned On
Thu Apr  4, 1996   12:48:41

Load Integration Turned On
Thu Apr  4, 1996   12:48:41

Begin Mass Calculation
Thu Apr  4, 1996   12:48:47

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:48:51

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:48:52

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:48:52

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:48:52

Number of equations: 4908
Average bandwidth:   192.887
Maximum bandwidth:   1230
Size of global matrix profile (mb): 7.57351
Number of terms in global matrix profile: 946689      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.5384
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

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

Number of equations: 5796
Average bandwidth:   195.658
Maximum bandwidth:   1479
Size of global matrix profile (mb): 9.07229
Number of terms in global matrix profile: 1134036     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.5384
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Number of equations: 5796
Average bandwidth:   195.658
Maximum bandwidth:   1479
Size of global matrix profile (mb): 9.07229
Number of terms in global matrix profile: 1134036     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.5384
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:48:59

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:49:00

Begin Load Calculations
Thu Apr  4, 1996   12:49:06

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:49:08

Begin P-Loop Pass 2
Thu Apr  4, 1996   12:49:35

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:49:36

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:49:36

Begin Element Calculations, Pass 2
Thu Apr  4, 1996   12:49:36

Number of equations: 6255
Average bandwidth:   380.371
Maximum bandwidth:   4863
Size of global matrix profile (mb): 19.0338
Number of terms in global matrix profile: 2379222     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Number of equations: 8076
Average bandwidth:   384.782
Maximum bandwidth:   6321
Size of global matrix profile (mb): 24.86
Number of terms in global matrix profile: 3107499     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Number of equations: 8076
Average bandwidth:   384.782
Maximum bandwidth:   6321
Size of global matrix profile (mb): 24.86
Number of terms in global matrix profile: 3107499     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Begin Global Matrix Assembly, Pass 2
Thu Apr  4, 1996   12:49:48

Begin Equation Solve, Pass 2
Thu Apr  4, 1996   12:49:50

Begin Load Calculations
Thu Apr  4, 1996   12:50:24

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:50:28

Completed P-Loop
Thu Apr  4, 1996   12:51:08

Completed Analysis: handle_std
Thu Apr  4, 1996   12:51:08

Completed Sensitivity Step 1 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:51:08

Parameters:
   thickness            20.00000%

End Updating Parameters
Thu Apr  4, 1996   12:51:53

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:51:57

Begin Mass Calculation
Thu Apr  4, 1996   12:52:04

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:52:07

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:52:08

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:52:08

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:52:09

Number of equations: 6255
Average bandwidth:   380.371
Maximum bandwidth:   4863
Size of global matrix profile (mb): 19.0338
Number of terms in global matrix profile: 2379222     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Number of equations: 8076
Average bandwidth:   384.782
Maximum bandwidth:   6321
Size of global matrix profile (mb): 24.86
Number of terms in global matrix profile: 3107499     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Number of equations: 8076
Average bandwidth:   384.782
Maximum bandwidth:   6321
Size of global matrix profile (mb): 24.86
Number of terms in global matrix profile: 3107499     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:52:24

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:52:26

Begin Load Calculations
Thu Apr  4, 1996   12:53:01

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:53:07

Begin Convergence Check Pass 1
Thu Apr  4, 1996   12:53:26

Completed P-Loop
Thu Apr  4, 1996   12:53:27

Completed Analysis: handle_std
Thu Apr  4, 1996   12:53:27

Completed Sensitivity Step 2 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:53:28

Parameters:
   thickness            40.00000%

End Updating Parameters
Thu Apr  4, 1996   12:54:16

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:54:19

Begin Mass Calculation
Thu Apr  4, 1996   12:54:26

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:54:30

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:54:30

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:54:30

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:54:31

Number of equations: 6255
Average bandwidth:   380.371
Maximum bandwidth:   4863
Size of global matrix profile (mb): 19.0338
Number of terms in global matrix profile: 2379222     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Number of equations: 8076
Average bandwidth:   384.782
Maximum bandwidth:   6321
Size of global matrix profile (mb): 24.86
Number of terms in global matrix profile: 3107499     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Number of equations: 8076
Average bandwidth:   384.782
Maximum bandwidth:   6321
Size of global matrix profile (mb): 24.86
Number of terms in global matrix profile: 3107499     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:54:47

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:54:50

Begin Load Calculations
Thu Apr  4, 1996   12:55:26

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:55:32

Begin Convergence Check Pass 1
Thu Apr  4, 1996   12:55:52

Completed P-Loop
Thu Apr  4, 1996   12:55:54

Completed Analysis: handle_std
Thu Apr  4, 1996   12:55:54

Completed Sensitivity Step 3 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:55:54

Parameters:
   thickness            60.00000%

End Updating Parameters
Thu Apr  4, 1996   12:56:47

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:56:51

Begin Mass Calculation
Thu Apr  4, 1996   12:56:57

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:57:01

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:57:01

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:57:01

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:57:02

Number of equations: 6255
Average bandwidth:   380.371
Maximum bandwidth:   4863
Size of global matrix profile (mb): 19.0338
Number of terms in global matrix profile: 2379222     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Number of equations: 8076
Average bandwidth:   384.782
Maximum bandwidth:   6321
Size of global matrix profile (mb): 24.86
Number of terms in global matrix profile: 3107499     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Number of equations: 8076
Average bandwidth:   384.782
Maximum bandwidth:   6321
Size of global matrix profile (mb): 24.86
Number of terms in global matrix profile: 3107499     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 7.74835
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 24.9947

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:57:18

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:57:20

Begin Load Calculations
Thu Apr  4, 1996   12:57:57

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:58:02

Begin Convergence Check Pass 1
Thu Apr  4, 1996   12:58:22

Completed P-Loop
Thu Apr  4, 1996   12:58:24

Completed Analysis: handle_std
Thu Apr  4, 1996   12:58:24

Completed Sensitivity Step 4 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:58:24

Parameters:
   thickness            80.00000%

End Updating Parameters
Thu Apr  4, 1996   12:59:51

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:59:54

Begin Mass Calculation
Thu Apr  4, 1996   13:00:00

Begin P-Loop Pass 1
Thu Apr  4, 1996   13:00:04

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   13:00:04

Begin Matrix Profile Minimization
Thu Apr  4, 1996   13:00:04

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   13:00:04

Number of equations: 4710
Average bandwidth:   202.593
Maximum bandwidth:   1074
Size of global matrix profile (mb): 7.6337
Number of terms in global matrix profile: 954213      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.37736
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Number of equations: 5538
Average bandwidth:   203.798
Maximum bandwidth:   1209
Size of global matrix profile (mb): 9.02906
Number of terms in global matrix profile: 1128633     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.37736
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Number of equations: 5538
Average bandwidth:   203.798
Maximum bandwidth:   1209
Size of global matrix profile (mb): 9.02906
Number of terms in global matrix profile: 1128633     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.37736
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   13:00:12

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   13:00:12

Begin Load Calculations
Thu Apr  4, 1996   13:00:18

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   13:00:20

Begin P-Loop Pass 2
Thu Apr  4, 1996   13:00:49

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   13:00:50

Begin Matrix Profile Minimization
Thu Apr  4, 1996   13:00:50

Begin Element Calculations, Pass 2
Thu Apr  4, 1996   13:00:50

Number of equations: 6288
Average bandwidth:   648.503
Maximum bandwidth:   4344
Size of global matrix profile (mb): 32.6223
Number of terms in global matrix profile: 4077786     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 7.91832
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 26.4827

Number of equations: 8166
Average bandwidth:   654.742
Maximum bandwidth:   5811
Size of global matrix profile (mb): 42.773
Number of terms in global matrix profile: 5346627     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 7.91832
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 26.4827
Using element-by-element static condensation.

Number of equations: 6288
Average bandwidth:   648.503
Maximum bandwidth:   4344
Size of global matrix profile (mb): 32.6223
Number of terms in global matrix profile: 4077786     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 7.91832
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 26.4827

Begin Global Matrix Assembly, Pass 2
Thu Apr  4, 1996   13:01:01

Begin Equation Solve, Pass 2
Thu Apr  4, 1996   13:01:10

Begin Load Calculations
Thu Apr  4, 1996   13:02:34

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   13:02:47

Completed P-Loop
Thu Apr  4, 1996   13:03:26

Completed Analysis: handle_std
Thu Apr  4, 1996   13:03:26

Completed Sensitivity Step 5 of 6

Begin Updating Parameters
Thu Apr  4, 1996   13:03:27

Parameters:
   thickness           100.00000%

End Updating Parameters
Thu Apr  4, 1996   13:04:15

Begin Analysis: "handle_std"
Thu Apr  4, 1996   13:04:19

Begin Mass Calculation
Thu Apr  4, 1996   13:04:26

Begin P-Loop Pass 1
Thu Apr  4, 1996   13:04:30

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   13:04:30

Begin Matrix Profile Minimization
Thu Apr  4, 1996   13:04:30

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   13:04:31

Number of equations: 6288
Average bandwidth:   648.503
Maximum bandwidth:   4344
Size of global matrix profile (mb): 32.6223
Number of terms in global matrix profile: 4077786     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 7.91832
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 26.4827

Number of equations: 8166
Average bandwidth:   654.742
Maximum bandwidth:   5811
Size of global matrix profile (mb): 42.773
Number of terms in global matrix profile: 5346627     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 7.91832
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 26.4827
Using element-by-element static condensation.

Number of equations: 6288
Average bandwidth:   648.503
Maximum bandwidth:   4344
Size of global matrix profile (mb): 32.6223
Number of terms in global matrix profile: 4077786     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 7.91832
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 26.4827

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   13:04:46

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   13:04:56

Begin Load Calculations
Thu Apr  4, 1996   13:06:22

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   13:06:36

Begin Convergence Check Pass 1
Thu Apr  4, 1996   13:06:56

Completed P-Loop
Thu Apr  4, 1996   13:06:58

Completed Analysis: handle_std
Thu Apr  4, 1996   13:06:58

Completed Sensitivity Step 6 of 6

Completed Global Sensitivity Study
