------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 16.0(58)
Diagnostic Log
Tue Apr 23, 1996   15:03:46
------------------------------------------------------------

Begin Analysis: "mpa_std"
Tue Apr 23, 1996   15:03:49

Using Block Solver
Tue Apr 23, 1996   15:03:49

Using element level matrix-vector multiplies
Tue Apr 23, 1996   15:03:49

Geometry Integration Turned On
Tue Apr 23, 1996   15:03:49

Load Integration Turned On
Tue Apr 23, 1996   15:03:49

Begin Mass Calculation
Tue Apr 23, 1996   15:03:55

Begin P-Loop Pass 1
Tue Apr 23, 1996   15:03:58

Begin Processing Multi-Point Constraints
Tue Apr 23, 1996   15:03:59

Begin Matrix Profile Minimization
Tue Apr 23, 1996   15:03:59

Begin Element Calculations, Pass 1
Tue Apr 23, 1996   15:03:59

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
Tue Apr 23, 1996   15:04:01

Begin Equation Solve, Pass 1
Tue Apr 23, 1996   15:04:05

Begin Load Calculations
Tue Apr 23, 1996   15:04:05

Begin Displacement and Stress Calculation
Tue Apr 23, 1996   15:04:07

Begin Reaction Calculation
Tue Apr 23, 1996   15:04:16

Begin Convergence Check Pass 1
Tue Apr 23, 1996   15:04:17

Begin P-Loop Pass 2
Tue Apr 23, 1996   15:04:18

Begin Processing Multi-Point Constraints
Tue Apr 23, 1996   15:04:19

Begin Matrix Profile Minimization
Tue Apr 23, 1996   15:04:19

Begin Element Calculations, Pass 2
Tue Apr 23, 1996   15:04:19

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
Tue Apr 23, 1996   15:04:22

Begin Equation Solve, Pass 2
Tue Apr 23, 1996   15:04:22

Begin Load Calculations
Tue Apr 23, 1996   15:04:22

Begin Displacement and Stress Calculation
Tue Apr 23, 1996   15:04:23

Begin Reaction Calculation
Tue Apr 23, 1996   15:04:34

Begin Convergence Check Pass 2
Tue Apr 23, 1996   15:04:35

Begin P-Loop Pass 3
Tue Apr 23, 1996   15:04:36

Begin Processing Multi-Point Constraints
Tue Apr 23, 1996   15:04:37

Begin Matrix Profile Minimization
Tue Apr 23, 1996   15:04:37

Begin Element Calculations, Pass 3
Tue Apr 23, 1996   15:04:37

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
Tue Apr 23, 1996   15:04:46

Begin Equation Solve, Pass 3
Tue Apr 23, 1996   15:04:47

Begin Load Calculations
Tue Apr 23, 1996   15:05:21

Begin Displacement and Stress Calculation
Tue Apr 23, 1996   15:05:23

Begin Reaction Calculation
Tue Apr 23, 1996   15:05:38

Begin Convergence Check Pass 3
Tue Apr 23, 1996   15:05:40

Begin P-Loop Pass 4
Tue Apr 23, 1996   15:05:42

Begin Processing Multi-Point Constraints
Tue Apr 23, 1996   15:05:43

Begin Matrix Profile Minimization
Tue Apr 23, 1996   15:05:43

Begin Element Calculations, Pass 4
Tue Apr 23, 1996   15:05:44

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
Tue Apr 23, 1996   15:06:09

Begin Equation Solve, Pass 4
Tue Apr 23, 1996   15:06:13

Begin Load Calculations
Tue Apr 23, 1996   15:07:02

Begin Displacement and Stress Calculation
Tue Apr 23, 1996   15:07:04

Begin Reaction Calculation
Tue Apr 23, 1996   15:07:29

Begin Convergence Check Pass 4
Tue Apr 23, 1996   15:07:37

Begin P-Loop Pass 5
Tue Apr 23, 1996   15:07:44

Begin Processing Multi-Point Constraints
Tue Apr 23, 1996   15:07:44

Begin Matrix Profile Minimization
Tue Apr 23, 1996   15:07:44

Begin Element Calculations, Pass 5
Tue Apr 23, 1996   15:07:48

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
Tue Apr 23, 1996   15:08:51

Begin Equation Solve, Pass 5
Tue Apr 23, 1996   15:10:02

Begin Load Calculations
Tue Apr 23, 1996   15:13:50

Begin Displacement and Stress Calculation
Tue Apr 23, 1996   15:14:34

Begin Reaction Calculation
Tue Apr 23, 1996   15:15:24

Begin Convergence Check Pass 5
Tue Apr 23, 1996   15:15:32

Begin P-Loop Pass 6
Tue Apr 23, 1996   15:15:40

Begin Processing Multi-Point Constraints
Tue Apr 23, 1996   15:15:40

Begin Matrix Profile Minimization
Tue Apr 23, 1996   15:15:40

Begin Element Calculations, Pass 6
Tue Apr 23, 1996   15:15:48

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
Tue Apr 23, 1996   15:17:55

Begin Equation Solve, Pass 6
Tue Apr 23, 1996   15:20:31

Begin Load Calculations
Tue Apr 23, 1996   15:33:27

Begin Displacement and Stress Calculation
Tue Apr 23, 1996   15:34:57

Begin Reaction Calculation
Tue Apr 23, 1996   15:36:29

Begin Convergence Check Pass 6
Tue Apr 23, 1996   15:36:43

Completed P-Loop
Tue Apr 23, 1996   15:36:59

Completed Analysis: mpa_std
Tue Apr 23, 1996   15:37:00
