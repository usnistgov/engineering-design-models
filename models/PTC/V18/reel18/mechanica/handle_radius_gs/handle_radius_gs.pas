------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 16.0(58)
Diagnostic Log
Thu Apr  4, 1996   12:17:39
------------------------------------------------------------

Begin Updating Parameters
Thu Apr  4, 1996   12:17:40

Parameters:
   end_radius            0.00000%

End Updating Parameters
Thu Apr  4, 1996   12:18:14

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:18:17

Using Block Solver
Thu Apr  4, 1996   12:18:17

Using element level matrix-vector multiplies
Thu Apr  4, 1996   12:18:17

Geometry Integration Turned On
Thu Apr  4, 1996   12:18:17

Load Integration Turned On
Thu Apr  4, 1996   12:18:17

Begin Mass Calculation
Thu Apr  4, 1996   12:18:23

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:18:27

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:18:27

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:18:27

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:18:28

Number of equations: 4284
Average bandwidth:   215.54
Maximum bandwidth:   1857
Size of global matrix profile (mb): 7.38698
Number of terms in global matrix profile: 923373      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 3.96744
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

Number of equations: 5094
Average bandwidth:   217.601
Maximum bandwidth:   2181
Size of global matrix profile (mb): 8.86766
Number of terms in global matrix profile: 1108458     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 3.96744
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Number of equations: 5094
Average bandwidth:   217.601
Maximum bandwidth:   2181
Size of global matrix profile (mb): 8.86766
Number of terms in global matrix profile: 1108458     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 3.96744
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:18:34

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:18:35

Begin Load Calculations
Thu Apr  4, 1996   12:18:42

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:18:43

Begin P-Loop Pass 2
Thu Apr  4, 1996   12:19:07

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:19:08

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:19:08

Begin Element Calculations, Pass 2
Thu Apr  4, 1996   12:19:09

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Number of equations: 9360
Average bandwidth:   734.966
Maximum bandwidth:   7374
Size of global matrix profile (mb): 55.0343
Number of terms in global matrix profile: 6879285     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879
Using element-by-element static condensation.

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Begin Global Matrix Assembly, Pass 2
Thu Apr  4, 1996   12:19:28

Begin Equation Solve, Pass 2
Thu Apr  4, 1996   12:19:39

Begin Load Calculations
Thu Apr  4, 1996   12:21:24

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:21:30

Completed P-Loop
Thu Apr  4, 1996   12:22:14

Completed Analysis: handle_std
Thu Apr  4, 1996   12:22:14

Completed Sensitivity Step 1 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:22:14

Parameters:
   end_radius           20.00000%

End Updating Parameters
Thu Apr  4, 1996   12:22:51

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:22:55

Begin Mass Calculation
Thu Apr  4, 1996   12:23:00

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:23:03

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:23:04

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:23:04

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:23:05

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Number of equations: 9360
Average bandwidth:   734.966
Maximum bandwidth:   7374
Size of global matrix profile (mb): 55.0343
Number of terms in global matrix profile: 6879285     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879
Using element-by-element static condensation.

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:23:16

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:23:29

Begin Load Calculations
Thu Apr  4, 1996   12:25:10

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:25:17

Begin Convergence Check Pass 1
Thu Apr  4, 1996   12:25:39

Completed P-Loop
Thu Apr  4, 1996   12:25:41

Completed Analysis: handle_std
Thu Apr  4, 1996   12:25:41

Completed Sensitivity Step 2 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:25:41

Parameters:
   end_radius           40.00000%

End Updating Parameters
Thu Apr  4, 1996   12:26:19

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:26:22

Begin Mass Calculation
Thu Apr  4, 1996   12:26:28

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:26:31

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:26:31

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:26:31

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:26:32

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Number of equations: 9360
Average bandwidth:   734.966
Maximum bandwidth:   7374
Size of global matrix profile (mb): 55.0343
Number of terms in global matrix profile: 6879285     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879
Using element-by-element static condensation.

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:26:45

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:26:57

Begin Load Calculations
Thu Apr  4, 1996   12:28:39

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:28:46

Begin Convergence Check Pass 1
Thu Apr  4, 1996   12:29:08

Completed P-Loop
Thu Apr  4, 1996   12:29:10

Completed Analysis: handle_std
Thu Apr  4, 1996   12:29:10

Completed Sensitivity Step 3 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:29:10

Parameters:
   end_radius           60.00000%

End Updating Parameters
Thu Apr  4, 1996   12:29:50

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:29:53

Begin Mass Calculation
Thu Apr  4, 1996   12:29:59

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:30:02

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:30:02

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:30:02

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:30:03

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Number of equations: 9360
Average bandwidth:   734.966
Maximum bandwidth:   7374
Size of global matrix profile (mb): 55.0343
Number of terms in global matrix profile: 6879285     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879
Using element-by-element static condensation.

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:30:16

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:30:29

Begin Load Calculations
Thu Apr  4, 1996   12:32:10

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:32:20

Begin Convergence Check Pass 1
Thu Apr  4, 1996   12:32:43

Completed P-Loop
Thu Apr  4, 1996   12:32:45

Completed Analysis: handle_std
Thu Apr  4, 1996   12:32:45

Completed Sensitivity Step 4 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:32:45

Parameters:
   end_radius           80.00000%

End Updating Parameters
Thu Apr  4, 1996   12:33:32

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:33:36

Begin Mass Calculation
Thu Apr  4, 1996   12:33:42

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:33:46

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:33:47

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:33:47

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:33:48

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Number of equations: 9360
Average bandwidth:   734.966
Maximum bandwidth:   7374
Size of global matrix profile (mb): 55.0343
Number of terms in global matrix profile: 6879285     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879
Using element-by-element static condensation.

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:34:01

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:34:14

Begin Load Calculations
Thu Apr  4, 1996   12:35:57

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:36:09

Begin Convergence Check Pass 1
Thu Apr  4, 1996   12:36:32

Completed P-Loop
Thu Apr  4, 1996   12:36:34

Completed Analysis: handle_std
Thu Apr  4, 1996   12:36:34

Completed Sensitivity Step 5 of 6

Begin Updating Parameters
Thu Apr  4, 1996   12:36:34

Parameters:
   end_radius          100.00000%

End Updating Parameters
Thu Apr  4, 1996   12:37:16

Begin Analysis: "handle_std"
Thu Apr  4, 1996   12:37:19

Begin Mass Calculation
Thu Apr  4, 1996   12:37:26

Begin P-Loop Pass 1
Thu Apr  4, 1996   12:37:30

Begin Processing Multi-Point Constraints
Thu Apr  4, 1996   12:37:30

Begin Matrix Profile Minimization
Thu Apr  4, 1996   12:37:30

Begin Element Calculations, Pass 1
Thu Apr  4, 1996   12:37:31

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Number of equations: 9360
Average bandwidth:   734.966
Maximum bandwidth:   7374
Size of global matrix profile (mb): 55.0343
Number of terms in global matrix profile: 6879285     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879
Using element-by-element static condensation.

Number of equations: 6624
Average bandwidth:   715.056
Maximum bandwidth:   5139
Size of global matrix profile (mb): 37.8922
Number of terms in global matrix profile: 4736529     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 10.1863
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 37.5879

Begin Global Matrix Assembly, Pass 1
Thu Apr  4, 1996   12:37:45

Begin Equation Solve, Pass 1
Thu Apr  4, 1996   12:37:57

Begin Load Calculations
Thu Apr  4, 1996   12:39:41

Begin Displacement and Stress Calculation
Thu Apr  4, 1996   12:39:54

Begin Convergence Check Pass 1
Thu Apr  4, 1996   12:40:17

Completed P-Loop
Thu Apr  4, 1996   12:40:19

Completed Analysis: handle_std
Thu Apr  4, 1996   12:40:19

Completed Sensitivity Step 6 of 6

Completed Global Sensitivity Study
