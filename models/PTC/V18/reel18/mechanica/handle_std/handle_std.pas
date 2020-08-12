------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 16.0(58)
Diagnostic Log
Thu Apr  4, 1996   10:39:37
------------------------------------------------------------

Begin Analysis: "handle_std"
Thu Apr  4, 1996   10:39:41

Using Block Solver
Thu Apr  4, 1996   10:39:41

Using element level matrix-vector multiplies
Thu Apr  4, 1996   10:39:41

Geometry Integration Turned On
Thu Apr  4, 1996   10:39:41

Load Integration Turned On
Thu Apr  4, 1996   10:39:41

Begin Mass Calculation
Thu Apr  4, 1996   10:39:46

Begin P-Loop Pass 1
Thu Apr  4, 1996   10:39:48

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   10:39:49

Begin Matrix Profile Minimization
Thu Apr  4, 1996   10:39:49

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   10:39:49

Number of equations: 4176
Average bandwidth:   216.218
Maximum bandwidth:   1524
Size of global matrix profile (mb): 7.2234
Number of terms in global matrix profile: 902925      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 3.86496
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

Number of equations: 4974
Average bandwidth:   216.911
Maximum bandwidth:   1758
Size of global matrix profile (mb): 8.63131
Number of terms in global matrix profile: 1078914     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 3.86496
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Number of equations: 4974
Average bandwidth:   216.911
Maximum bandwidth:   1758
Size of global matrix profile (mb): 8.63131
Number of terms in global matrix profile: 1078914     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 3.86496
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   10:39:55

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   10:39:56

Begin Load Calculations
Thu Apr  4, 1996   10:40:03

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   10:40:04

Begin Reaction Calculation
Thu Apr  4, 1996   10:40:16

Begin P-Loop Pass 2
Thu Apr  4, 1996   10:40:28

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   10:40:29

Begin Matrix Profile Minimization
Thu Apr  4, 1996   10:40:29

Begin Element Calculations, Pass 2
Thu Apr  4, 1996   10:40:30

Number of equations: 6519
Average bandwidth:   726.187
Maximum bandwidth:   5766
Size of global matrix profile (mb): 37.8721
Number of terms in global matrix profile: 4734015     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 9.90223
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5085

Number of equations: 9252
Average bandwidth:   747.157
Maximum bandwidth:   8298
Size of global matrix profile (mb): 55.3015
Number of terms in global matrix profile: 6912693     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 9.90223
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5085
Using element-by-element static condensation.

Number of equations: 6519
Average bandwidth:   726.187
Maximum bandwidth:   5766
Size of global matrix profile (mb): 37.8721
Number of terms in global matrix profile: 4734015     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 9.90223
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5085

Begin Global Matrix Assembly, Pass 2
Thu Apr  4, 1996   10:40:48

Begin Equation Solve, Pass 2
Thu Apr  4, 1996   10:40:58

Begin Load Calculations
Thu Apr  4, 1996   10:42:39

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   10:42:44

Begin Reaction Calculation
Thu Apr  4, 1996   10:43:06

Completed P-Loop
Thu Apr  4, 1996   10:43:30

Completed Analysis: handle_std
Thu Apr  4, 1996   10:43:30
