------------------------------------------------------------
MECHANICA Structure Version 8.0(35)
Diagnostic Log
Tue Nov 21, 1995   17:45:27
------------------------------------------------------------

Begin Updating Parameters
Tue Nov 21, 1995   17:45:27

Parameters:
   d6                    0.00000%

End Updating Parameters
Tue Nov 21, 1995   17:48:10

Begin Analysis: "anlys1"
Tue Nov 21, 1995   17:48:14

Using Block Solver
Tue Nov 21, 1995   17:48:14

Using element level matrix-vector multiplies
Tue Nov 21, 1995   17:48:14

Geometry Integration Turned On
Tue Nov 21, 1995   17:48:14

Load Integration Turned On
Tue Nov 21, 1995   17:48:14

Begin Mass Calculation
Tue Nov 21, 1995   17:48:21

Begin P-Loop Pass 1
Tue Nov 21, 1995   17:48:24

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   17:48:25

Begin Matrix Profile Minimization
Tue Nov 21, 1995   17:48:25

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   17:48:25

Number of equations: 336
Average bandwidth:   27.6071
Maximum bandwidth:   120
Size of global matrix profile (kb): 74.208
Number of terms in global matrix profile: 9276        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 185.328
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
Tue Nov 21, 1995   17:48:28

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   17:48:28

Begin Load Calculations
Tue Nov 21, 1995   17:48:28

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   17:48:30

Begin Convergence Check Pass 1
Tue Nov 21, 1995   17:48:38

Begin P-Loop Pass 2
Tue Nov 21, 1995   17:48:39

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   17:48:39

Begin Matrix Profile Minimization
Tue Nov 21, 1995   17:48:39

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   17:48:39

Number of equations: 1794
Average bandwidth:   96.5
Maximum bandwidth:   642
Size of global matrix profile (mb): 1.38497
Number of terms in global matrix profile: 173121      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   17:48:42

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   17:48:43

Begin Load Calculations
Tue Nov 21, 1995   17:48:43

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   17:48:44

Begin Convergence Check Pass 2
Tue Nov 21, 1995   17:48:55

Begin P-Loop Pass 3
Tue Nov 21, 1995   17:48:56

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   17:48:56

Begin Matrix Profile Minimization
Tue Nov 21, 1995   17:48:56

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   17:48:57

Number of equations: 4638
Average bandwidth:   279.254
Maximum bandwidth:   3978
Size of global matrix profile (mb): 10.3614
Number of terms in global matrix profile: 1295178     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.3723
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.7215

Number of equations: 5634
Average bandwidth:   280.085
Maximum bandwidth:   4752
Size of global matrix profile (mb): 12.624
Number of terms in global matrix profile: 1577997     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.3723
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.7215

Number of equations: 5634
Average bandwidth:   280.085
Maximum bandwidth:   4752
Size of global matrix profile (mb): 12.624
Number of terms in global matrix profile: 1577997     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.3723
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.7215

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   17:49:05

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   17:49:06

Begin Load Calculations
Tue Nov 21, 1995   17:49:20

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   17:49:21

Begin Convergence Check Pass 3
Tue Nov 21, 1995   17:49:37

Begin P-Loop Pass 4
Tue Nov 21, 1995   17:49:38

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   17:49:39

Begin Matrix Profile Minimization
Tue Nov 21, 1995   17:49:39

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   17:49:40

Number of equations: 8319
Average bandwidth:   402.677
Maximum bandwidth:   3111
Size of global matrix profile (mb): 26.799
Number of terms in global matrix profile: 3349869     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.6737
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 39.3053

Number of equations: 11307
Average bandwidth:   408.828
Maximum bandwidth:   4404
Size of global matrix profile (mb): 36.9809
Number of terms in global matrix profile: 4622613     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.6737
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 39.3053

Number of equations: 11307
Average bandwidth:   408.828
Maximum bandwidth:   4404
Size of global matrix profile (mb): 36.9809
Number of terms in global matrix profile: 4622613     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 11.6737
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 39.3053

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   17:50:05

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   17:50:09

Begin Load Calculations
Tue Nov 21, 1995   17:51:18

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   17:51:23

Begin Convergence Check Pass 4
Tue Nov 21, 1995   17:51:51

Begin P-Loop Pass 5
Tue Nov 21, 1995   17:51:55

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   17:51:56

Begin Matrix Profile Minimization
Tue Nov 21, 1995   17:51:56

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   17:51:59

Number of equations: 11673
Average bandwidth:   534.657
Maximum bandwidth:   6066
Size of global matrix profile (mb): 49.9284
Number of terms in global matrix profile: 6241050     
Minimum recommended bsram under ideal conditions: 3

Size of element file (mb): 22.9943
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 77.4218

Number of equations: 17481
Average bandwidth:   545.535
Maximum bandwidth:   8961
Size of global matrix profile (mb): 76.292
Number of terms in global matrix profile: 9536505     
Minimum recommended bsram under ideal conditions: 3

Size of element file (mb): 22.9943
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 77.4218
Using element-by-element static condensation.

Number of equations: 11673
Average bandwidth:   534.657
Maximum bandwidth:   6066
Size of global matrix profile (mb): 49.9284
Number of terms in global matrix profile: 6241050     
Minimum recommended bsram under ideal conditions: 3

Size of element file (mb): 22.9943
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 77.4218

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   17:52:55

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   17:54:06

Begin Load Calculations
Tue Nov 21, 1995   17:55:59

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   17:56:25

Begin Convergence Check Pass 5
Tue Nov 21, 1995   17:57:16

Begin P-Loop Pass 6
Tue Nov 21, 1995   17:57:23

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   17:57:24

Begin Matrix Profile Minimization
Tue Nov 21, 1995   17:57:24

Begin Element Calculations, Pass 6
Tue Nov 21, 1995   17:57:32

Number of equations: 14865
Average bandwidth:   766.286
Maximum bandwidth:   7674
Size of global matrix profile (mb): 91.1268
Number of terms in global matrix profile: 11390844    
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 40.6533
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 136.88

Number of equations: 24537
Average bandwidth:   781.787
Maximum bandwidth:   12432
Size of global matrix profile (mb): 153.462
Number of terms in global matrix profile: 19182714    
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 40.6533
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 136.88
Using element-by-element static condensation.

Number of equations: 14865
Average bandwidth:   766.286
Maximum bandwidth:   7674
Size of global matrix profile (mb): 91.1268
Number of terms in global matrix profile: 11390844    
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 40.6533
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 136.88

Begin Global Matrix Assembly, Pass 6
Tue Nov 21, 1995   17:59:42

Begin Equation Solve, Pass 6
Tue Nov 21, 1995   18:02:17

Begin Load Calculations
Tue Nov 21, 1995   18:07:51

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:08:39

Begin Convergence Check Pass 6
Tue Nov 21, 1995   18:10:27

Completed P-Loop
Tue Nov 21, 1995   18:10:45

Completed Analysis: anlys1
Tue Nov 21, 1995   18:10:47

Completed Sensitivity Step 1 of 11

Begin Updating Parameters
Tue Nov 21, 1995   18:10:50

Parameters:
   d6                   10.00000%

End Updating Parameters
Tue Nov 21, 1995   18:12:35

Begin Analysis: "anlys1"
Tue Nov 21, 1995   18:12:40

Begin Mass Calculation
Tue Nov 21, 1995   18:12:49

Begin P-Loop Pass 1
Tue Nov 21, 1995   18:12:53

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:12:54

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:12:54

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   18:12:55

Number of equations: 336
Average bandwidth:   27.6071
Maximum bandwidth:   120
Size of global matrix profile (kb): 74.208
Number of terms in global matrix profile: 9276        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 185.328
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   18:12:57

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   18:12:57

Begin Load Calculations
Tue Nov 21, 1995   18:12:59

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:13:00

Begin Convergence Check Pass 1
Tue Nov 21, 1995   18:13:10

Begin P-Loop Pass 2
Tue Nov 21, 1995   18:13:11

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:13:11

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:13:11

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   18:13:11

Number of equations: 1794
Average bandwidth:   96.5
Maximum bandwidth:   642
Size of global matrix profile (mb): 1.38497
Number of terms in global matrix profile: 173121      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   18:13:15

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   18:13:15

Begin Load Calculations
Tue Nov 21, 1995   18:13:16

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:13:17

Begin Convergence Check Pass 2
Tue Nov 21, 1995   18:13:31

Begin P-Loop Pass 3
Tue Nov 21, 1995   18:13:32

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:13:33

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:13:33

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   18:13:34

Number of equations: 4695
Average bandwidth:   280.994
Maximum bandwidth:   4035
Size of global matrix profile (mb): 10.5541
Number of terms in global matrix profile: 1319268     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.44478
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.9656

Number of equations: 5703
Average bandwidth:   281.907
Maximum bandwidth:   4821
Size of global matrix profile (mb): 12.8617
Number of terms in global matrix profile: 1607718     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.44478
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.9656

Number of equations: 5703
Average bandwidth:   281.907
Maximum bandwidth:   4821
Size of global matrix profile (mb): 12.8617
Number of terms in global matrix profile: 1607718     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.44478
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.9656

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   18:13:46

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   18:13:47

Begin Load Calculations
Tue Nov 21, 1995   18:14:01

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:14:03

Begin Convergence Check Pass 3
Tue Nov 21, 1995   18:14:26

Begin P-Loop Pass 4
Tue Nov 21, 1995   18:14:29

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:14:30

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:14:30

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   18:14:32

Number of equations: 8499
Average bandwidth:   454.799
Maximum bandwidth:   7914
Size of global matrix profile (mb): 30.9227
Number of terms in global matrix profile: 3865335     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.0242
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.4855

Number of equations: 11568
Average bandwidth:   454.255
Maximum bandwidth:   10668
Size of global matrix profile (mb): 42.0385
Number of terms in global matrix profile: 5254818     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.0242
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.4855

Number of equations: 11568
Average bandwidth:   454.255
Maximum bandwidth:   10668
Size of global matrix profile (mb): 42.0385
Number of terms in global matrix profile: 5254818     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.0242
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.4855

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   18:15:04

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   18:15:15

Begin Load Calculations
Tue Nov 21, 1995   18:16:55

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:17:14

Begin Convergence Check Pass 4
Tue Nov 21, 1995   18:18:05

Begin P-Loop Pass 5
Tue Nov 21, 1995   18:18:10

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:18:11

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:18:11

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   18:18:15

Number of equations: 11655
Average bandwidth:   679.371
Maximum bandwidth:   10290
Size of global matrix profile (mb): 63.3446
Number of terms in global matrix profile: 7918074     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 22.7952
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 76.7517

Number of equations: 17445
Average bandwidth:   685.421
Maximum bandwidth:   15231
Size of global matrix profile (mb): 95.6573
Number of terms in global matrix profile: 11957163    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 22.7952
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 76.7517
Using element-by-element static condensation.

Number of equations: 11655
Average bandwidth:   679.371
Maximum bandwidth:   10290
Size of global matrix profile (mb): 63.3446
Number of terms in global matrix profile: 7918074     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 22.7952
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 76.7517

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   18:19:20

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   18:20:50

Begin Load Calculations
Tue Nov 21, 1995   18:24:27

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:25:08

Begin Convergence Check Pass 5
Tue Nov 21, 1995   18:26:30

Begin P-Loop Pass 6
Tue Nov 21, 1995   18:26:39

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:26:41

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:26:41

Begin Element Calculations, Pass 6
Tue Nov 21, 1995   18:26:49

Number of equations: 14919
Average bandwidth:   965.691
Maximum bandwidth:   13263
Size of global matrix profile (mb): 115.257
Number of terms in global matrix profile: 14407140    
Minimum recommended bsram under ideal conditions: 8

Size of element file (mb): 40.8178
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 137.434

Number of equations: 24657
Average bandwidth:   980.45
Maximum bandwidth:   21654
Size of global matrix profile (mb): 193.4
Number of terms in global matrix profile: 24174948    
Minimum recommended bsram under ideal conditions: 8

Size of element file (mb): 40.8178
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 137.434
Using element-by-element static condensation.

Number of equations: 14919
Average bandwidth:   965.691
Maximum bandwidth:   13263
Size of global matrix profile (mb): 115.257
Number of terms in global matrix profile: 14407140    
Minimum recommended bsram under ideal conditions: 8

Size of element file (mb): 40.8178
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 137.434

Begin Global Matrix Assembly, Pass 6
Tue Nov 21, 1995   18:29:06

Begin Equation Solve, Pass 6
Tue Nov 21, 1995   18:32:11

Begin Load Calculations
Tue Nov 21, 1995   18:41:56

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:43:15

Begin Convergence Check Pass 6
Tue Nov 21, 1995   18:45:09

Completed P-Loop
Tue Nov 21, 1995   18:45:27

Completed Analysis: anlys1
Tue Nov 21, 1995   18:45:28

Completed Sensitivity Step 2 of 11

Begin Updating Parameters
Tue Nov 21, 1995   18:45:29

Parameters:
   d6                   20.00000%

End Updating Parameters
Tue Nov 21, 1995   18:47:30

Begin Analysis: "anlys1"
Tue Nov 21, 1995   18:47:34

Begin Mass Calculation
Tue Nov 21, 1995   18:47:44

Begin P-Loop Pass 1
Tue Nov 21, 1995   18:47:48

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:47:52

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:47:52

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   18:47:52

Number of equations: 336
Average bandwidth:   27.6071
Maximum bandwidth:   120
Size of global matrix profile (kb): 74.208
Number of terms in global matrix profile: 9276        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 185.328
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   18:47:54

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   18:47:55

Begin Load Calculations
Tue Nov 21, 1995   18:47:55

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:47:56

Begin Convergence Check Pass 1
Tue Nov 21, 1995   18:48:08

Begin P-Loop Pass 2
Tue Nov 21, 1995   18:48:09

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:48:10

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:48:10

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   18:48:10

Number of equations: 1794
Average bandwidth:   96.5
Maximum bandwidth:   642
Size of global matrix profile (mb): 1.38497
Number of terms in global matrix profile: 173121      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   18:48:14

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   18:48:14

Begin Load Calculations
Tue Nov 21, 1995   18:48:15

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:48:16

Begin Convergence Check Pass 2
Tue Nov 21, 1995   18:48:29

Begin P-Loop Pass 3
Tue Nov 21, 1995   18:48:30

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:48:31

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:48:31

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   18:48:31

Number of equations: 4698
Average bandwidth:   280.454
Maximum bandwidth:   4047
Size of global matrix profile (mb): 10.5406
Number of terms in global matrix profile: 1317573     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.44761
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.9751

Number of equations: 5706
Average bandwidth:   281.29
Maximum bandwidth:   4836
Size of global matrix profile (mb): 12.8403
Number of terms in global matrix profile: 1605042     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.44761
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.9751

Number of equations: 5706
Average bandwidth:   281.29
Maximum bandwidth:   4836
Size of global matrix profile (mb): 12.8403
Number of terms in global matrix profile: 1605042     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.44761
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 14.9751

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   18:48:44

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   18:48:45

Begin Load Calculations
Tue Nov 21, 1995   18:48:58

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:49:00

Begin Convergence Check Pass 3
Tue Nov 21, 1995   18:49:24

Begin P-Loop Pass 4
Tue Nov 21, 1995   18:49:27

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:49:28

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:49:28

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   18:49:29

Number of equations: 8553
Average bandwidth:   444.992
Maximum bandwidth:   7773
Size of global matrix profile (mb): 30.4481
Number of terms in global matrix profile: 3806016     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.1468
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.8983

Number of equations: 11649
Average bandwidth:   445.789
Maximum bandwidth:   10497
Size of global matrix profile (mb): 41.544
Number of terms in global matrix profile: 5192997     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.1468
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.8983

Number of equations: 11649
Average bandwidth:   445.789
Maximum bandwidth:   10497
Size of global matrix profile (mb): 41.544
Number of terms in global matrix profile: 5192997     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.1468
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.8983

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   18:50:02

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   18:50:13

Begin Load Calculations
Tue Nov 21, 1995   18:51:47

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:52:05

Begin Convergence Check Pass 4
Tue Nov 21, 1995   18:52:50

Begin P-Loop Pass 5
Tue Nov 21, 1995   18:52:54

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   18:52:55

Begin Matrix Profile Minimization
Tue Nov 21, 1995   18:52:55

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   18:52:58

Number of equations: 11397
Average bandwidth:   690.417
Maximum bandwidth:   9984
Size of global matrix profile (mb): 62.9494
Number of terms in global matrix profile: 7868679     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 21.9311
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 73.8419

Number of equations: 16992
Average bandwidth:   692.17
Maximum bandwidth:   14682
Size of global matrix profile (mb): 94.0908
Number of terms in global matrix profile: 11761353    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 21.9311
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 73.8419
Using element-by-element static condensation.

Number of equations: 11397
Average bandwidth:   690.417
Maximum bandwidth:   9984
Size of global matrix profile (mb): 62.9494
Number of terms in global matrix profile: 7868679     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 21.9311
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 73.8419

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   18:53:58

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   18:55:21

Begin Load Calculations
Tue Nov 21, 1995   18:59:03

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   18:59:42

Begin Convergence Check Pass 5
Tue Nov 21, 1995   19:00:55

Completed P-Loop
Tue Nov 21, 1995   19:01:02

Completed Analysis: anlys1
Tue Nov 21, 1995   19:01:04

Completed Sensitivity Step 3 of 11

Begin Updating Parameters
Tue Nov 21, 1995   19:01:05

Parameters:
   d6                   30.00000%

End Updating Parameters
Tue Nov 21, 1995   19:03:26

Begin Analysis: "anlys1"
Tue Nov 21, 1995   19:03:32

Begin Mass Calculation
Tue Nov 21, 1995   19:03:42

Begin P-Loop Pass 1
Tue Nov 21, 1995   19:03:46

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:03:48

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:03:48

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   19:03:48

Number of equations: 336
Average bandwidth:   27.6071
Maximum bandwidth:   120
Size of global matrix profile (kb): 74.208
Number of terms in global matrix profile: 9276        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 185.328
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   19:03:51

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   19:03:51

Begin Load Calculations
Tue Nov 21, 1995   19:03:51

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:03:53

Begin Convergence Check Pass 1
Tue Nov 21, 1995   19:04:03

Begin P-Loop Pass 2
Tue Nov 21, 1995   19:04:04

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:04:05

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:04:05

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   19:04:05

Number of equations: 1794
Average bandwidth:   96.5
Maximum bandwidth:   642
Size of global matrix profile (mb): 1.38497
Number of terms in global matrix profile: 173121      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   19:04:09

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   19:04:11

Begin Load Calculations
Tue Nov 21, 1995   19:04:11

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:04:13

Begin Convergence Check Pass 2
Tue Nov 21, 1995   19:04:25

Begin P-Loop Pass 3
Tue Nov 21, 1995   19:04:26

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:04:27

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:04:27

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   19:04:27

Number of equations: 4710
Average bandwidth:   277.622
Maximum bandwidth:   4062
Size of global matrix profile (mb): 10.4608
Number of terms in global matrix profile: 1307598     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.46734
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.0415

Number of equations: 5721
Average bandwidth:   278.851
Maximum bandwidth:   4857
Size of global matrix profile (mb): 12.7625
Number of terms in global matrix profile: 1595307     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.46734
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.0415

Number of equations: 5721
Average bandwidth:   278.851
Maximum bandwidth:   4857
Size of global matrix profile (mb): 12.7625
Number of terms in global matrix profile: 1595307     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.46734
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.0415

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   19:04:38

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   19:04:41

Begin Load Calculations
Tue Nov 21, 1995   19:04:56

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:04:58

Begin Convergence Check Pass 3
Tue Nov 21, 1995   19:05:16

Begin P-Loop Pass 4
Tue Nov 21, 1995   19:05:18

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:05:19

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:05:19

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   19:05:20

Number of equations: 8592
Average bandwidth:   440.684
Maximum bandwidth:   8022
Size of global matrix profile (mb): 30.2909
Number of terms in global matrix profile: 3786357     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.1546
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.9244

Number of equations: 11649
Average bandwidth:   442.54
Maximum bandwidth:   10776
Size of global matrix profile (mb): 41.2411
Number of terms in global matrix profile: 5155143     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.1546
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.9244

Number of equations: 11649
Average bandwidth:   442.54
Maximum bandwidth:   10776
Size of global matrix profile (mb): 41.2411
Number of terms in global matrix profile: 5155143     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.1546
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 40.9244

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   19:05:52

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   19:06:03

Begin Load Calculations
Tue Nov 21, 1995   19:07:48

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:08:07

Begin Convergence Check Pass 4
Tue Nov 21, 1995   19:08:38

Begin P-Loop Pass 5
Tue Nov 21, 1995   19:08:42

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:08:43

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:08:43

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   19:08:46

Number of equations: 11448
Average bandwidth:   717.161
Maximum bandwidth:   10059
Size of global matrix profile (mb): 65.6805
Number of terms in global matrix profile: 8210061     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 21.901
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 73.7406

Number of equations: 17022
Average bandwidth:   718.738
Maximum bandwidth:   14820
Size of global matrix profile (mb): 97.8748
Number of terms in global matrix profile: 12234354    
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 21.901
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 73.7406
Using element-by-element static condensation.

Number of equations: 11448
Average bandwidth:   717.161
Maximum bandwidth:   10059
Size of global matrix profile (mb): 65.6805
Number of terms in global matrix profile: 8210061     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 21.901
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 73.7406

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   19:09:42

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   19:11:05

Begin Load Calculations
Tue Nov 21, 1995   19:15:06

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:15:48

Begin Convergence Check Pass 5
Tue Nov 21, 1995   19:16:41

Completed P-Loop
Tue Nov 21, 1995   19:16:48

Completed Analysis: anlys1
Tue Nov 21, 1995   19:16:49

Completed Sensitivity Step 4 of 11

Begin Updating Parameters
Tue Nov 21, 1995   19:16:50

Parameters:
   d6                   40.00000%

End Updating Parameters
Tue Nov 21, 1995   19:18:43

Begin Analysis: "anlys1"
Tue Nov 21, 1995   19:18:48

Begin Mass Calculation
Tue Nov 21, 1995   19:18:57

Begin P-Loop Pass 1
Tue Nov 21, 1995   19:19:01

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:19:03

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:19:03

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   19:19:03

Number of equations: 336
Average bandwidth:   27.6071
Maximum bandwidth:   120
Size of global matrix profile (kb): 74.208
Number of terms in global matrix profile: 9276        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 185.328
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   19:19:06

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   19:19:06

Begin Load Calculations
Tue Nov 21, 1995   19:19:06

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:19:07

Begin Convergence Check Pass 1
Tue Nov 21, 1995   19:19:18

Begin P-Loop Pass 2
Tue Nov 21, 1995   19:19:20

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:19:21

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:19:21

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   19:19:21

Number of equations: 1794
Average bandwidth:   96.5
Maximum bandwidth:   642
Size of global matrix profile (mb): 1.38497
Number of terms in global matrix profile: 173121      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   19:19:25

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   19:19:25

Begin Load Calculations
Tue Nov 21, 1995   19:19:26

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:19:27

Begin Convergence Check Pass 2
Tue Nov 21, 1995   19:19:39

Begin P-Loop Pass 3
Tue Nov 21, 1995   19:19:40

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:19:41

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:19:41

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   19:19:41

Number of equations: 4719
Average bandwidth:   275.042
Maximum bandwidth:   4065
Size of global matrix profile (mb): 10.3834
Number of terms in global matrix profile: 1297923     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.48121
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.0882

Number of equations: 5730
Average bandwidth:   276.153
Maximum bandwidth:   4860
Size of global matrix profile (mb): 12.6588
Number of terms in global matrix profile: 1582356     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.48121
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.0882

Number of equations: 5730
Average bandwidth:   276.153
Maximum bandwidth:   4860
Size of global matrix profile (mb): 12.6588
Number of terms in global matrix profile: 1582356     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.48121
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.0882

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   19:19:53

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   19:19:54

Begin Load Calculations
Tue Nov 21, 1995   19:20:07

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:20:09

Begin Convergence Check Pass 3
Tue Nov 21, 1995   19:20:27

Begin P-Loop Pass 4
Tue Nov 21, 1995   19:20:29

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:20:30

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:20:30

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   19:20:31

Number of equations: 8661
Average bandwidth:   429.653
Maximum bandwidth:   7872
Size of global matrix profile (mb): 29.7698
Number of terms in global matrix profile: 3721227     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.3343
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 41.5297

Number of equations: 11736
Average bandwidth:   432.612
Maximum bandwidth:   10569
Size of global matrix profile (mb): 40.6171
Number of terms in global matrix profile: 5077134     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.3343
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 41.5297

Number of equations: 11736
Average bandwidth:   432.612
Maximum bandwidth:   10569
Size of global matrix profile (mb): 40.6171
Number of terms in global matrix profile: 5077134     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.3343
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 41.5297

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   19:21:02

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   19:21:12

Begin Load Calculations
Tue Nov 21, 1995   19:22:41

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:23:00

Begin Convergence Check Pass 4
Tue Nov 21, 1995   19:23:37

Begin P-Loop Pass 5
Tue Nov 21, 1995   19:23:41

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:23:42

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:23:42

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   19:23:45

Number of equations: 11685
Average bandwidth:   690.24
Maximum bandwidth:   10227
Size of global matrix profile (mb): 64.5236
Number of terms in global matrix profile: 8065455     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 22.6708
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 76.3327

Number of equations: 17403
Average bandwidth:   695.13
Maximum bandwidth:   15090
Size of global matrix profile (mb): 96.7788
Number of terms in global matrix profile: 12097344    
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 22.6708
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 76.3327
Using element-by-element static condensation.

Number of equations: 11685
Average bandwidth:   690.24
Maximum bandwidth:   10227
Size of global matrix profile (mb): 64.5236
Number of terms in global matrix profile: 8065455     
Minimum recommended bsram under ideal conditions: 4

Size of element file (mb): 22.6708
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 76.3327

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   19:24:46

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   19:26:11

Begin Load Calculations
Tue Nov 21, 1995   19:29:59

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:30:39

Begin Convergence Check Pass 5
Tue Nov 21, 1995   19:31:39

Completed P-Loop
Tue Nov 21, 1995   19:31:46

Completed Analysis: anlys1
Tue Nov 21, 1995   19:31:47

Completed Sensitivity Step 5 of 11

Begin Updating Parameters
Tue Nov 21, 1995   19:31:48

Parameters:
   d6                   50.00000%

End Updating Parameters
Tue Nov 21, 1995   19:34:16

Begin Analysis: "anlys1"
Tue Nov 21, 1995   19:34:20

Begin Mass Calculation
Tue Nov 21, 1995   19:34:30

Begin P-Loop Pass 1
Tue Nov 21, 1995   19:34:35

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:34:37

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:34:37

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   19:34:37

Number of equations: 336
Average bandwidth:   27.6071
Maximum bandwidth:   120
Size of global matrix profile (kb): 74.208
Number of terms in global matrix profile: 9276        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 185.328
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   19:34:39

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   19:34:39

Begin Load Calculations
Tue Nov 21, 1995   19:34:39

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:34:41

Begin Convergence Check Pass 1
Tue Nov 21, 1995   19:34:51

Begin P-Loop Pass 2
Tue Nov 21, 1995   19:34:52

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:34:52

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:34:52

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   19:34:53

Number of equations: 1794
Average bandwidth:   96.5
Maximum bandwidth:   642
Size of global matrix profile (mb): 1.38497
Number of terms in global matrix profile: 173121      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   19:34:56

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   19:34:56

Begin Load Calculations
Tue Nov 21, 1995   19:34:57

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:34:58

Begin Convergence Check Pass 2
Tue Nov 21, 1995   19:35:10

Begin P-Loop Pass 3
Tue Nov 21, 1995   19:35:11

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:35:12

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:35:12

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   19:35:12

Number of equations: 4728
Average bandwidth:   298.063
Maximum bandwidth:   4098
Size of global matrix profile (mb): 11.274
Number of terms in global matrix profile: 1409244     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.50406
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.1652

Number of equations: 5757
Average bandwidth:   297.24
Maximum bandwidth:   4917
Size of global matrix profile (mb): 13.6897
Number of terms in global matrix profile: 1711209     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.50406
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.1652

Number of equations: 5757
Average bandwidth:   297.24
Maximum bandwidth:   4917
Size of global matrix profile (mb): 13.6897
Number of terms in global matrix profile: 1711209     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.50406
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.1652

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   19:35:23

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   19:35:24

Begin Load Calculations
Tue Nov 21, 1995   19:35:40

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:35:42

Begin Convergence Check Pass 3
Tue Nov 21, 1995   19:36:00

Begin P-Loop Pass 4
Tue Nov 21, 1995   19:36:01

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:36:02

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:36:02

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   19:36:04

Number of equations: 8715
Average bandwidth:   478.249
Maximum bandwidth:   7896
Size of global matrix profile (mb): 33.3435
Number of terms in global matrix profile: 4167942     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.4954
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.0721

Number of equations: 11835
Average bandwidth:   479.141
Maximum bandwidth:   10644
Size of global matrix profile (mb): 45.365
Number of terms in global matrix profile: 5670630     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.4954
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.0721

Number of equations: 11835
Average bandwidth:   479.141
Maximum bandwidth:   10644
Size of global matrix profile (mb): 45.365
Number of terms in global matrix profile: 5670630     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.4954
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.0721

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   19:36:34

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   19:36:47

Begin Load Calculations
Tue Nov 21, 1995   19:38:39

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:39:02

Begin Convergence Check Pass 4
Tue Nov 21, 1995   19:39:33

Begin P-Loop Pass 5
Tue Nov 21, 1995   19:39:37

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:39:38

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:39:38

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   19:39:42

Number of equations: 11757
Average bandwidth:   709.048
Maximum bandwidth:   10221
Size of global matrix profile (mb): 66.6902
Number of terms in global matrix profile: 8336274     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 22.9113
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 77.1423

Number of equations: 17523
Average bandwidth:   713.123
Maximum bandwidth:   15066
Size of global matrix profile (mb): 99.9684
Number of terms in global matrix profile: 12496050    
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 22.9113
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 77.1423
Using element-by-element static condensation.

Number of equations: 11757
Average bandwidth:   709.048
Maximum bandwidth:   10221
Size of global matrix profile (mb): 66.6902
Number of terms in global matrix profile: 8336274     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 22.9113
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 77.1423

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   19:40:38

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   19:42:02

Begin Load Calculations
Tue Nov 21, 1995   19:45:53

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   19:46:34

Begin Convergence Check Pass 5
Tue Nov 21, 1995   19:47:40

Begin P-Loop Pass 6
Tue Nov 21, 1995   19:47:47

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   19:47:48

Begin Matrix Profile Minimization
Tue Nov 21, 1995   19:47:48

Begin Element Calculations, Pass 6
Tue Nov 21, 1995   19:47:55

Number of equations: 14436
Average bandwidth:   985.161
Maximum bandwidth:   12771
Size of global matrix profile (mb): 113.774
Number of terms in global matrix profile: 14221782    
Minimum recommended bsram under ideal conditions: 8

Size of element file (mb): 37.7104
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 126.971

Number of equations: 23505
Average bandwidth:   994.096
Maximum bandwidth:   20628
Size of global matrix profile (mb): 186.93
Number of terms in global matrix profile: 23366235    
Minimum recommended bsram under ideal conditions: 8

Size of element file (mb): 37.7104
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 126.971
Using element-by-element static condensation.

Number of equations: 14436
Average bandwidth:   985.161
Maximum bandwidth:   12771
Size of global matrix profile (mb): 113.774
Number of terms in global matrix profile: 14221782    
Minimum recommended bsram under ideal conditions: 8

Size of element file (mb): 37.7104
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 126.971

Begin Global Matrix Assembly, Pass 6
Tue Nov 21, 1995   19:49:52

Begin Equation Solve, Pass 6
Tue Nov 21, 1995   19:52:41

Begin Load Calculations
Tue Nov 21, 1995   20:02:25

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:03:35

Begin Convergence Check Pass 6
Tue Nov 21, 1995   20:05:37

Completed P-Loop
Tue Nov 21, 1995   20:05:57

Completed Analysis: anlys1
Tue Nov 21, 1995   20:05:58

Completed Sensitivity Step 6 of 11

Begin Updating Parameters
Tue Nov 21, 1995   20:05:59

Parameters:
   d6                   60.00000%

End Updating Parameters
Tue Nov 21, 1995   20:08:02

Begin Analysis: "anlys1"
Tue Nov 21, 1995   20:08:09

Begin Mass Calculation
Tue Nov 21, 1995   20:08:18

Begin P-Loop Pass 1
Tue Nov 21, 1995   20:08:23

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:08:24

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:08:24

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   20:08:24

Number of equations: 336
Average bandwidth:   27.6071
Maximum bandwidth:   120
Size of global matrix profile (kb): 74.208
Number of terms in global matrix profile: 9276        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 185.328
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   20:08:27

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   20:08:27

Begin Load Calculations
Tue Nov 21, 1995   20:08:27

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:08:29

Begin Convergence Check Pass 1
Tue Nov 21, 1995   20:08:38

Begin P-Loop Pass 2
Tue Nov 21, 1995   20:08:39

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:08:40

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:08:40

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   20:08:40

Number of equations: 1794
Average bandwidth:   96.5
Maximum bandwidth:   642
Size of global matrix profile (mb): 1.38497
Number of terms in global matrix profile: 173121      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   20:08:43

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   20:08:44

Begin Load Calculations
Tue Nov 21, 1995   20:08:44

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:08:45

Begin Convergence Check Pass 2
Tue Nov 21, 1995   20:08:57

Begin P-Loop Pass 3
Tue Nov 21, 1995   20:08:58

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:08:59

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:08:59

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   20:09:00

Number of equations: 4749
Average bandwidth:   297.798
Maximum bandwidth:   4110
Size of global matrix profile (mb): 11.314
Number of terms in global matrix profile: 1414245     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.53634
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.2739

Number of equations: 5790
Average bandwidth:   296.787
Maximum bandwidth:   4938
Size of global matrix profile (mb): 13.7472
Number of terms in global matrix profile: 1718394     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.53634
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.2739

Number of equations: 5790
Average bandwidth:   296.787
Maximum bandwidth:   4938
Size of global matrix profile (mb): 13.7472
Number of terms in global matrix profile: 1718394     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.53634
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.2739

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   20:09:11

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   20:09:12

Begin Load Calculations
Tue Nov 21, 1995   20:09:28

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:09:30

Begin Convergence Check Pass 3
Tue Nov 21, 1995   20:09:53

Begin P-Loop Pass 4
Tue Nov 21, 1995   20:09:55

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:09:56

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:09:56

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   20:09:58

Number of equations: 8751
Average bandwidth:   454.742
Maximum bandwidth:   7917
Size of global matrix profile (mb): 31.8356
Number of terms in global matrix profile: 3979446     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.5833
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.3681

Number of equations: 11889
Average bandwidth:   456.422
Maximum bandwidth:   10674
Size of global matrix profile (mb): 43.4112
Number of terms in global matrix profile: 5426406     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.5833
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.3681

Number of equations: 11889
Average bandwidth:   456.422
Maximum bandwidth:   10674
Size of global matrix profile (mb): 43.4112
Number of terms in global matrix profile: 5426406     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.5833
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.3681

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   20:10:31

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   20:10:44

Begin Load Calculations
Tue Nov 21, 1995   20:12:28

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:12:49

Begin Convergence Check Pass 4
Tue Nov 21, 1995   20:13:32

Begin P-Loop Pass 5
Tue Nov 21, 1995   20:13:37

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:13:39

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:13:39

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   20:13:43

Number of equations: 12024
Average bandwidth:   811.003
Maximum bandwidth:   10623
Size of global matrix profile (mb): 78.012
Number of terms in global matrix profile: 9751500     
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 23.9139
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 80.5183

Number of equations: 18117
Average bandwidth:   816.192
Maximum bandwidth:   15879
Size of global matrix profile (mb): 118.296
Number of terms in global matrix profile: 14786946    
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 23.9139
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 80.5183
Using element-by-element static condensation.

Number of equations: 12024
Average bandwidth:   811.003
Maximum bandwidth:   10623
Size of global matrix profile (mb): 78.012
Number of terms in global matrix profile: 9751500     
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 23.9139
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 80.5183

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   20:14:50

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   20:16:22

Begin Load Calculations
Tue Nov 21, 1995   20:21:39

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:22:30

Begin Convergence Check Pass 5
Tue Nov 21, 1995   20:23:55

Begin P-Loop Pass 6
Tue Nov 21, 1995   20:24:05

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:24:08

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:24:08

Begin Element Calculations, Pass 6
Tue Nov 21, 1995   20:24:16

Number of equations: 14565
Average bandwidth:   1217.09
Maximum bandwidth:   12975
Size of global matrix profile (mb): 141.815
Number of terms in global matrix profile: 17726883    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 37.9776
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 127.871

Number of equations: 23760
Average bandwidth:   1231.03
Maximum bandwidth:   21039
Size of global matrix profile (mb): 233.994
Number of terms in global matrix profile: 29249190    
Minimum recommended bsram under ideal conditions: 13

Size of element file (mb): 37.9776
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 127.871
Using element-by-element static condensation.

Number of equations: 14565
Average bandwidth:   1217.09
Maximum bandwidth:   12975
Size of global matrix profile (mb): 141.815
Number of terms in global matrix profile: 17726883    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 37.9776
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 127.871

Begin Global Matrix Assembly, Pass 6
Tue Nov 21, 1995   20:26:13

Begin Equation Solve, Pass 6
Tue Nov 21, 1995   20:29:11

Begin Load Calculations
Tue Nov 21, 1995   20:44:45

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:46:17

Begin Convergence Check Pass 6
Tue Nov 21, 1995   20:48:21

Completed P-Loop
Tue Nov 21, 1995   20:48:39

Completed Analysis: anlys1
Tue Nov 21, 1995   20:48:40

Completed Sensitivity Step 7 of 11

Begin Updating Parameters
Tue Nov 21, 1995   20:48:42

Parameters:
   d6                   70.00000%

End Updating Parameters
Tue Nov 21, 1995   20:51:06

Begin Analysis: "anlys1"
Tue Nov 21, 1995   20:51:11

Begin Mass Calculation
Tue Nov 21, 1995   20:51:20

Begin P-Loop Pass 1
Tue Nov 21, 1995   20:51:24

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:51:26

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:51:26

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   20:51:26

Number of equations: 336
Average bandwidth:   27.6071
Maximum bandwidth:   120
Size of global matrix profile (kb): 74.208
Number of terms in global matrix profile: 9276        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 185.328
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   20:51:30

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   20:51:30

Begin Load Calculations
Tue Nov 21, 1995   20:51:30

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:51:32

Begin Convergence Check Pass 1
Tue Nov 21, 1995   20:51:42

Begin P-Loop Pass 2
Tue Nov 21, 1995   20:51:43

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:51:44

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:51:44

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   20:51:44

Number of equations: 1794
Average bandwidth:   96.5
Maximum bandwidth:   642
Size of global matrix profile (mb): 1.38497
Number of terms in global matrix profile: 173121      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1881
Average bandwidth:   96.4545
Maximum bandwidth:   666
Size of global matrix profile (mb): 1.45145
Number of terms in global matrix profile: 181431      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.10484
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   20:51:47

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   20:51:47

Begin Load Calculations
Tue Nov 21, 1995   20:51:48

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:51:49

Begin Convergence Check Pass 2
Tue Nov 21, 1995   20:52:03

Begin P-Loop Pass 3
Tue Nov 21, 1995   20:52:04

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:52:05

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:52:05

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   20:52:05

Number of equations: 4752
Average bandwidth:   297.521
Maximum bandwidth:   4095
Size of global matrix profile (mb): 11.3106
Number of terms in global matrix profile: 1413819     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.53917
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.2834

Number of equations: 5793
Average bandwidth:   296.396
Maximum bandwidth:   4914
Size of global matrix profile (mb): 13.7362
Number of terms in global matrix profile: 1717023     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.53917
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.2834

Number of equations: 5793
Average bandwidth:   296.396
Maximum bandwidth:   4914
Size of global matrix profile (mb): 13.7362
Number of terms in global matrix profile: 1717023     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.53917
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.2834

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   20:52:17

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   20:52:18

Begin Load Calculations
Tue Nov 21, 1995   20:52:34

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:52:35

Begin Convergence Check Pass 3
Tue Nov 21, 1995   20:52:58

Begin P-Loop Pass 4
Tue Nov 21, 1995   20:53:00

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:53:02

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:53:02

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   20:53:03

Number of equations: 8784
Average bandwidth:   450.778
Maximum bandwidth:   7950
Size of global matrix profile (mb): 31.677
Number of terms in global matrix profile: 3959631     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.667
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.6499

Number of equations: 11943
Average bandwidth:   452.404
Maximum bandwidth:   10737
Size of global matrix profile (mb): 43.2245
Number of terms in global matrix profile: 5403060     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.667
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.6499

Number of equations: 11943
Average bandwidth:   452.404
Maximum bandwidth:   10737
Size of global matrix profile (mb): 43.2245
Number of terms in global matrix profile: 5403060     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.667
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.6499

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   20:53:35

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   20:53:46

Begin Load Calculations
Tue Nov 21, 1995   20:55:27

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   20:55:50

Begin Convergence Check Pass 4
Tue Nov 21, 1995   20:56:36

Begin P-Loop Pass 5
Tue Nov 21, 1995   20:56:40

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   20:56:42

Begin Matrix Profile Minimization
Tue Nov 21, 1995   20:56:42

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   20:56:45

Number of equations: 12186
Average bandwidth:   872.374
Maximum bandwidth:   10782
Size of global matrix profile (mb): 85.046
Number of terms in global matrix profile: 10630755    
Minimum recommended bsram under ideal conditions: 7

Size of element file (mb): 24.3566
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 82.0087

Number of equations: 18360
Average bandwidth:   880.124
Maximum bandwidth:   16119
Size of global matrix profile (mb): 129.273
Number of terms in global matrix profile: 16159077    
Minimum recommended bsram under ideal conditions: 7

Size of element file (mb): 24.3566
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 82.0087
Using element-by-element static condensation.

Number of equations: 12186
Average bandwidth:   872.374
Maximum bandwidth:   10782
Size of global matrix profile (mb): 85.046
Number of terms in global matrix profile: 10630755    
Minimum recommended bsram under ideal conditions: 7

Size of element file (mb): 24.3566
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 82.0087

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   20:57:53

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   20:59:30

Begin Load Calculations
Tue Nov 21, 1995   21:06:04

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   21:06:56

Begin Convergence Check Pass 5
Tue Nov 21, 1995   21:08:21

Begin P-Loop Pass 6
Tue Nov 21, 1995   21:08:30

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   21:08:32

Begin Matrix Profile Minimization
Tue Nov 21, 1995   21:08:32

Begin Element Calculations, Pass 6
Tue Nov 21, 1995   21:08:39

Number of equations: 14688
Average bandwidth:   1223.49
Maximum bandwidth:   13164
Size of global matrix profile (mb): 143.765
Number of terms in global matrix profile: 17970660    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 38.271
Maximum element matrix size (kb): 390.624
Average element matrix size (kb): 128.859

Number of equations: 23940
Average bandwidth:   1250.85
Maximum bandwidth:   21333
Size of global matrix profile (mb): 239.562
Number of terms in global matrix profile: 29945295    
Minimum recommended bsram under ideal conditions: 13

Size of element file (mb): 38.271
Maximum element matrix size (kb): 390.624
Average element matrix size (kb): 128.859
Using element-by-element static condensation.

Number of equations: 14688
Average bandwidth:   1223.49
Maximum bandwidth:   13164
Size of global matrix profile (mb): 143.765
Number of terms in global matrix profile: 17970660    
Minimum recommended bsram under ideal conditions: 12

Size of element file (mb): 38.271
Maximum element matrix size (kb): 390.624
Average element matrix size (kb): 128.859

Begin Global Matrix Assembly, Pass 6
Tue Nov 21, 1995   21:10:40

Begin Equation Solve, Pass 6
Tue Nov 21, 1995   21:13:42

Begin Load Calculations
Tue Nov 21, 1995   21:29:17

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   21:30:44

Begin Convergence Check Pass 6
Tue Nov 21, 1995   21:32:47

Completed P-Loop
Tue Nov 21, 1995   21:33:03

Completed Analysis: anlys1
Tue Nov 21, 1995   21:33:05

Completed Sensitivity Step 8 of 11

Begin Updating Parameters
Tue Nov 21, 1995   21:33:06

Parameters:
   d6                   80.00000%

End Updating Parameters
Tue Nov 21, 1995   21:35:33

Begin Analysis: "anlys1"
Tue Nov 21, 1995   21:35:38

Begin Mass Calculation
Tue Nov 21, 1995   21:35:49

Begin P-Loop Pass 1
Tue Nov 21, 1995   21:35:54

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   21:35:56

Begin Matrix Profile Minimization
Tue Nov 21, 1995   21:35:56

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   21:35:56

Number of equations: 330
Average bandwidth:   27.7727
Maximum bandwidth:   141
Size of global matrix profile (kb): 73.32
Number of terms in global matrix profile: 9165        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 184.08
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   21:35:59

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   21:35:59

Begin Load Calculations
Tue Nov 21, 1995   21:35:59

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   21:36:01

Begin Convergence Check Pass 1
Tue Nov 21, 1995   21:36:12

Begin P-Loop Pass 2
Tue Nov 21, 1995   21:36:13

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   21:36:14

Begin Matrix Profile Minimization
Tue Nov 21, 1995   21:36:14

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   21:36:14

Number of equations: 1773
Average bandwidth:   105.548
Maximum bandwidth:   645
Size of global matrix profile (mb): 1.4971
Number of terms in global matrix profile: 187137      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1854
Average bandwidth:   105.709
Maximum bandwidth:   669
Size of global matrix profile (mb): 1.56787
Number of terms in global matrix profile: 195984      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1854
Average bandwidth:   105.709
Maximum bandwidth:   669
Size of global matrix profile (mb): 1.56787
Number of terms in global matrix profile: 195984      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   21:36:19

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   21:36:19

Begin Load Calculations
Tue Nov 21, 1995   21:36:20

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   21:36:22

Begin Convergence Check Pass 2
Tue Nov 21, 1995   21:36:34

Begin P-Loop Pass 3
Tue Nov 21, 1995   21:36:35

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   21:36:36

Begin Matrix Profile Minimization
Tue Nov 21, 1995   21:36:36

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   21:36:36

Number of equations: 4728
Average bandwidth:   326.967
Maximum bandwidth:   4653
Size of global matrix profile (mb): 12.3672
Number of terms in global matrix profile: 1545900     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.54728
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4145

Number of equations: 5769
Average bandwidth:   326.741
Maximum bandwidth:   5649
Size of global matrix profile (mb): 15.0798
Number of terms in global matrix profile: 1884969     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.54728
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4145

Number of equations: 5769
Average bandwidth:   326.741
Maximum bandwidth:   5649
Size of global matrix profile (mb): 15.0798
Number of terms in global matrix profile: 1884969     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.54728
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4145

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   21:36:48

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   21:36:49

Begin Load Calculations
Tue Nov 21, 1995   21:37:08

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   21:37:10

Begin Convergence Check Pass 3
Tue Nov 21, 1995   21:37:36

Begin P-Loop Pass 4
Tue Nov 21, 1995   21:37:39

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   21:37:39

Begin Matrix Profile Minimization
Tue Nov 21, 1995   21:37:39

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   21:37:41

Number of equations: 8613
Average bandwidth:   431.273
Maximum bandwidth:   7722
Size of global matrix profile (mb): 29.7164
Number of terms in global matrix profile: 3714552     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.3979
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.0268

Number of equations: 11730
Average bandwidth:   433.761
Maximum bandwidth:   10401
Size of global matrix profile (mb): 40.7042
Number of terms in global matrix profile: 5088021     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.3979
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.0268

Number of equations: 11730
Average bandwidth:   433.761
Maximum bandwidth:   10401
Size of global matrix profile (mb): 40.7042
Number of terms in global matrix profile: 5088021     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.3979
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.0268

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   21:38:16

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   21:38:29

Begin Load Calculations
Tue Nov 21, 1995   21:40:03

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   21:40:24

Begin Convergence Check Pass 4
Tue Nov 21, 1995   21:41:13

Begin P-Loop Pass 5
Tue Nov 21, 1995   21:41:19

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   21:41:20

Begin Matrix Profile Minimization
Tue Nov 21, 1995   21:41:20

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   21:41:24

Number of equations: 12198
Average bandwidth:   774.096
Maximum bandwidth:   11373
Size of global matrix profile (mb): 75.5394
Number of terms in global matrix profile: 9442428     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 24.8532
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 84.2483

Number of equations: 18573
Average bandwidth:   779.209
Maximum bandwidth:   17199
Size of global matrix profile (mb): 115.778
Number of terms in global matrix profile: 14472246    
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 24.8532
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 84.2483
Using element-by-element static condensation.

Number of equations: 12198
Average bandwidth:   774.096
Maximum bandwidth:   11373
Size of global matrix profile (mb): 75.5394
Number of terms in global matrix profile: 9442428     
Minimum recommended bsram under ideal conditions: 5

Size of element file (mb): 24.8532
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 84.2483

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   21:42:36

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   21:44:14

Begin Load Calculations
Tue Nov 21, 1995   21:49:11

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   21:50:01

Begin Convergence Check Pass 5
Tue Nov 21, 1995   21:51:37

Begin P-Loop Pass 6
Tue Nov 21, 1995   21:51:45

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   21:51:47

Begin Matrix Profile Minimization
Tue Nov 21, 1995   21:51:47

Begin Element Calculations, Pass 6
Tue Nov 21, 1995   21:51:54

Number of equations: 14808
Average bandwidth:   1653.2
Maximum bandwidth:   14235
Size of global matrix profile (mb): 195.844
Number of terms in global matrix profile: 24480546    
Minimum recommended bsram under ideal conditions: 22

Size of element file (mb): 39.4044
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 133.574

Number of equations: 24444
Average bandwidth:   1660.7
Maximum bandwidth:   23394
Size of global matrix profile (mb): 324.753
Number of terms in global matrix profile: 40594068    
Minimum recommended bsram under ideal conditions: 23

Size of element file (mb): 39.4044
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 133.574
Using element-by-element static condensation.

Number of equations: 14808
Average bandwidth:   1653.2
Maximum bandwidth:   14235
Size of global matrix profile (mb): 195.844
Number of terms in global matrix profile: 24480546    
Minimum recommended bsram under ideal conditions: 22

Size of element file (mb): 39.4044
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 133.574

Begin Global Matrix Assembly, Pass 6
Tue Nov 21, 1995   21:54:02

Begin Equation Solve, Pass 6
Tue Nov 21, 1995   21:57:43

Begin Load Calculations
Tue Nov 21, 1995   22:27:18

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   22:29:13

Begin Convergence Check Pass 6
Tue Nov 21, 1995   22:31:22

Completed P-Loop
Tue Nov 21, 1995   22:31:41

Completed Analysis: anlys1
Tue Nov 21, 1995   22:31:43

Completed Sensitivity Step 9 of 11

Begin Updating Parameters
Tue Nov 21, 1995   22:31:44

Parameters:
   d6                   90.00000%

End Updating Parameters
Tue Nov 21, 1995   22:33:42

Begin Analysis: "anlys1"
Tue Nov 21, 1995   22:33:47

Begin Mass Calculation
Tue Nov 21, 1995   22:33:57

Begin P-Loop Pass 1
Tue Nov 21, 1995   22:34:01

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   22:34:02

Begin Matrix Profile Minimization
Tue Nov 21, 1995   22:34:02

Begin Element Calculations, Pass 1
Tue Nov 21, 1995   22:34:03

Number of equations: 330
Average bandwidth:   27.7727
Maximum bandwidth:   141
Size of global matrix profile (kb): 73.32
Number of terms in global matrix profile: 9165        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 184.08
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Tue Nov 21, 1995   22:34:05

Begin Equation Solve, Pass 1
Tue Nov 21, 1995   22:34:05

Begin Load Calculations
Tue Nov 21, 1995   22:34:06

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   22:34:07

Begin Convergence Check Pass 1
Tue Nov 21, 1995   22:34:20

Begin P-Loop Pass 2
Tue Nov 21, 1995   22:34:21

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   22:34:21

Begin Matrix Profile Minimization
Tue Nov 21, 1995   22:34:21

Begin Element Calculations, Pass 2
Tue Nov 21, 1995   22:34:22

Number of equations: 1773
Average bandwidth:   105.548
Maximum bandwidth:   645
Size of global matrix profile (mb): 1.4971
Number of terms in global matrix profile: 187137      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1854
Average bandwidth:   105.709
Maximum bandwidth:   669
Size of global matrix profile (mb): 1.56787
Number of terms in global matrix profile: 195984      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1854
Average bandwidth:   105.709
Maximum bandwidth:   669
Size of global matrix profile (mb): 1.56787
Number of terms in global matrix profile: 195984      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Tue Nov 21, 1995   22:34:25

Begin Equation Solve, Pass 2
Tue Nov 21, 1995   22:34:25

Begin Load Calculations
Tue Nov 21, 1995   22:34:26

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   22:34:27

Begin Convergence Check Pass 2
Tue Nov 21, 1995   22:34:40

Begin P-Loop Pass 3
Tue Nov 21, 1995   22:34:41

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   22:34:42

Begin Matrix Profile Minimization
Tue Nov 21, 1995   22:34:42

Begin Element Calculations, Pass 3
Tue Nov 21, 1995   22:34:42

Number of equations: 4728
Average bandwidth:   326.967
Maximum bandwidth:   4653
Size of global matrix profile (mb): 12.3672
Number of terms in global matrix profile: 1545900     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.54728
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4145

Number of equations: 5769
Average bandwidth:   326.741
Maximum bandwidth:   5649
Size of global matrix profile (mb): 15.0798
Number of terms in global matrix profile: 1884969     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.54728
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4145

Number of equations: 5769
Average bandwidth:   326.741
Maximum bandwidth:   5649
Size of global matrix profile (mb): 15.0798
Number of terms in global matrix profile: 1884969     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.54728
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4145

Begin Global Matrix Assembly, Pass 3
Tue Nov 21, 1995   22:34:55

Begin Equation Solve, Pass 3
Tue Nov 21, 1995   22:34:56

Begin Load Calculations
Tue Nov 21, 1995   22:35:15

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   22:35:17

Begin Convergence Check Pass 3
Tue Nov 21, 1995   22:35:42

Begin P-Loop Pass 4
Tue Nov 21, 1995   22:35:46

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   22:35:47

Begin Matrix Profile Minimization
Tue Nov 21, 1995   22:35:47

Begin Element Calculations, Pass 4
Tue Nov 21, 1995   22:35:48

Number of equations: 8631
Average bandwidth:   430.032
Maximum bandwidth:   7569
Size of global matrix profile (mb): 29.6929
Number of terms in global matrix profile: 3711609     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.4524
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.2114

Number of equations: 11754
Average bandwidth:   430.091
Maximum bandwidth:   10185
Size of global matrix profile (mb): 40.4423
Number of terms in global matrix profile: 5055291     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.4524
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.2114

Number of equations: 11754
Average bandwidth:   430.091
Maximum bandwidth:   10185
Size of global matrix profile (mb): 40.4423
Number of terms in global matrix profile: 5055291     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.4524
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.2114

Begin Global Matrix Assembly, Pass 4
Tue Nov 21, 1995   22:36:20

Begin Equation Solve, Pass 4
Tue Nov 21, 1995   22:36:32

Begin Load Calculations
Tue Nov 21, 1995   22:38:07

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   22:38:26

Begin Convergence Check Pass 4
Tue Nov 21, 1995   22:39:18

Begin P-Loop Pass 5
Tue Nov 21, 1995   22:39:23

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   22:39:25

Begin Matrix Profile Minimization
Tue Nov 21, 1995   22:39:25

Begin Element Calculations, Pass 5
Tue Nov 21, 1995   22:39:28

Number of equations: 12405
Average bandwidth:   818.887
Maximum bandwidth:   10932
Size of global matrix profile (mb): 81.2663
Number of terms in global matrix profile: 10158288    
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 25.5698
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 86.6772

Number of equations: 18915
Average bandwidth:   830.417
Maximum bandwidth:   16473
Size of global matrix profile (mb): 125.659
Number of terms in global matrix profile: 15707334    
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 25.5698
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 86.6772
Using element-by-element static condensation.

Number of equations: 12405
Average bandwidth:   818.887
Maximum bandwidth:   10932
Size of global matrix profile (mb): 81.2663
Number of terms in global matrix profile: 10158288    
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 25.5698
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 86.6772

Begin Global Matrix Assembly, Pass 5
Tue Nov 21, 1995   22:40:44

Begin Equation Solve, Pass 5
Tue Nov 21, 1995   22:42:27

Begin Load Calculations
Tue Nov 21, 1995   22:48:33

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   22:49:24

Begin Convergence Check Pass 5
Tue Nov 21, 1995   22:50:54

Begin P-Loop Pass 6
Tue Nov 21, 1995   22:51:05

Begin Processing Multi-Point Constraints
Tue Nov 21, 1995   22:51:06

Begin Matrix Profile Minimization
Tue Nov 21, 1995   22:51:06

Begin Element Calculations, Pass 6
Tue Nov 21, 1995   22:51:15

Number of equations: 15366
Average bandwidth:   1884.08
Maximum bandwidth:   14799
Size of global matrix profile (mb): 231.606
Number of terms in global matrix profile: 28950720    
Minimum recommended bsram under ideal conditions: 29

Size of element file (mb): 42.0916
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 142.683

Number of equations: 25584
Average bandwidth:   1918.44
Maximum bandwidth:   24549
Size of global matrix profile (mb): 392.652
Number of terms in global matrix profile: 49081458    
Minimum recommended bsram under ideal conditions: 30

Size of element file (mb): 42.0916
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 142.683
Using element-by-element static condensation.

Number of equations: 15366
Average bandwidth:   1884.08
Maximum bandwidth:   14799
Size of global matrix profile (mb): 231.606
Number of terms in global matrix profile: 28950720    
Minimum recommended bsram under ideal conditions: 29

Size of element file (mb): 42.0916
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 142.683

Begin Global Matrix Assembly, Pass 6
Tue Nov 21, 1995   22:53:36

Begin Equation Solve, Pass 6
Tue Nov 21, 1995   22:57:37

Begin Load Calculations
Tue Nov 21, 1995   23:38:50

Begin Displacement and Stress Calculation
Tue Nov 21, 1995   23:41:04

Begin Convergence Check Pass 6
Tue Nov 21, 1995   23:43:31

Completed P-Loop
Tue Nov 21, 1995   23:43:53

Completed Analysis: anlys1
Tue Nov 21, 1995   23:43:54

Completed Sensitivity Step 10 of 11

Begin Updating Parameters
Tue Nov 21, 1995   23:43:56

Parameters:
   d6                  100.00000%

End Updating Parameters
Wed Nov 22, 1995   06:16:43

Begin Analysis: "anlys1"
Wed Nov 22, 1995   06:16:48

Begin Mass Calculation
Wed Nov 22, 1995   06:16:58

Begin P-Loop Pass 1
Wed Nov 22, 1995   06:17:03

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   06:17:05

Begin Matrix Profile Minimization
Wed Nov 22, 1995   06:17:05

Begin Element Calculations, Pass 1
Wed Nov 22, 1995   06:17:05

Number of equations: 330
Average bandwidth:   27.7727
Maximum bandwidth:   141
Size of global matrix profile (kb): 73.32
Number of terms in global matrix profile: 9165        
Minimum recommended bsram under ideal conditions: 2

Size of element file (kb): 184.08
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

Begin Global Matrix Assembly, Pass 1
Wed Nov 22, 1995   06:17:09

Begin Equation Solve, Pass 1
Wed Nov 22, 1995   06:17:09

Begin Load Calculations
Wed Nov 22, 1995   06:17:09

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   06:17:11

Begin Convergence Check Pass 1
Wed Nov 22, 1995   06:17:23

Begin P-Loop Pass 2
Wed Nov 22, 1995   06:17:24

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   06:17:25

Begin Matrix Profile Minimization
Wed Nov 22, 1995   06:17:25

Begin Element Calculations, Pass 2
Wed Nov 22, 1995   06:17:25

Number of equations: 1773
Average bandwidth:   105.548
Maximum bandwidth:   645
Size of global matrix profile (mb): 1.4971
Number of terms in global matrix profile: 187137      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1854
Average bandwidth:   105.709
Maximum bandwidth:   669
Size of global matrix profile (mb): 1.56787
Number of terms in global matrix profile: 195984      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Number of equations: 1854
Average bandwidth:   105.709
Maximum bandwidth:   669
Size of global matrix profile (mb): 1.56787
Number of terms in global matrix profile: 195984      
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 1.0974
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Global Matrix Assembly, Pass 2
Wed Nov 22, 1995   06:17:28

Begin Equation Solve, Pass 2
Wed Nov 22, 1995   06:17:29

Begin Load Calculations
Wed Nov 22, 1995   06:17:29

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   06:17:31

Begin Convergence Check Pass 2
Wed Nov 22, 1995   06:17:44

Begin P-Loop Pass 3
Wed Nov 22, 1995   06:17:45

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   06:17:46

Begin Matrix Profile Minimization
Wed Nov 22, 1995   06:17:46

Begin Element Calculations, Pass 3
Wed Nov 22, 1995   06:17:46

Number of equations: 4740
Average bandwidth:   327.451
Maximum bandwidth:   4665
Size of global matrix profile (mb): 12.4169
Number of terms in global matrix profile: 1552116     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.56312
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4682

Number of equations: 5781
Average bandwidth:   326.702
Maximum bandwidth:   5661
Size of global matrix profile (mb): 15.1093
Number of terms in global matrix profile: 1888665     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.56312
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4682

Number of equations: 5781
Average bandwidth:   326.702
Maximum bandwidth:   5661
Size of global matrix profile (mb): 15.1093
Number of terms in global matrix profile: 1888665     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 4.56312
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 15.4682

Begin Global Matrix Assembly, Pass 3
Wed Nov 22, 1995   06:17:58

Begin Equation Solve, Pass 3
Wed Nov 22, 1995   06:18:00

Begin Load Calculations
Wed Nov 22, 1995   06:18:19

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   06:18:21

Begin Convergence Check Pass 3
Wed Nov 22, 1995   06:18:46

Begin P-Loop Pass 4
Wed Nov 22, 1995   06:18:49

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   06:18:50

Begin Matrix Profile Minimization
Wed Nov 22, 1995   06:18:50

Begin Element Calculations, Pass 4
Wed Nov 22, 1995   06:18:51

Number of equations: 8703
Average bandwidth:   429.061
Maximum bandwidth:   7629
Size of global matrix profile (mb): 29.8729
Number of terms in global matrix profile: 3734118     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.5955
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.6967

Number of equations: 11850
Average bandwidth:   432.545
Maximum bandwidth:   10257
Size of global matrix profile (mb): 41.0052
Number of terms in global matrix profile: 5125656     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.5955
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.6967

Number of equations: 11850
Average bandwidth:   432.545
Maximum bandwidth:   10257
Size of global matrix profile (mb): 41.0052
Number of terms in global matrix profile: 5125656     
Minimum recommended bsram under ideal conditions: 2

Size of element file (mb): 12.5955
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 42.6967

Begin Global Matrix Assembly, Pass 4
Wed Nov 22, 1995   06:19:23

Begin Equation Solve, Pass 4
Wed Nov 22, 1995   06:19:36

Begin Load Calculations
Wed Nov 22, 1995   06:21:05

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   06:21:22

Begin Convergence Check Pass 4
Wed Nov 22, 1995   06:22:16

Begin P-Loop Pass 5
Wed Nov 22, 1995   06:22:21

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   06:22:23

Begin Matrix Profile Minimization
Wed Nov 22, 1995   06:22:23

Begin Element Calculations, Pass 5
Wed Nov 22, 1995   06:22:27

Number of equations: 12585
Average bandwidth:   806.506
Maximum bandwidth:   11379
Size of global matrix profile (mb): 81.199
Number of terms in global matrix profile: 10149873    
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 26.1103
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 88.5096

Number of equations: 19275
Average bandwidth:   825.095
Maximum bandwidth:   17283
Size of global matrix profile (mb): 127.23
Number of terms in global matrix profile: 15903714    
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 26.1103
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 88.5096
Using element-by-element static condensation.

Number of equations: 12585
Average bandwidth:   806.506
Maximum bandwidth:   11379
Size of global matrix profile (mb): 81.199
Number of terms in global matrix profile: 10149873    
Minimum recommended bsram under ideal conditions: 6

Size of element file (mb): 26.1103
Maximum element matrix size (kb): 182.328
Average element matrix size (kb): 88.5096

Begin Global Matrix Assembly, Pass 5
Wed Nov 22, 1995   06:23:45

Begin Equation Solve, Pass 5
Wed Nov 22, 1995   06:25:30

Begin Load Calculations
Wed Nov 22, 1995   06:30:55

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   06:31:45

Begin Convergence Check Pass 5
Wed Nov 22, 1995   06:33:23

Begin P-Loop Pass 6
Wed Nov 22, 1995   06:33:33

Begin Processing Multi-Point Constraints
Wed Nov 22, 1995   06:33:37

Begin Matrix Profile Minimization
Wed Nov 22, 1995   06:33:37

Begin Element Calculations, Pass 6
Wed Nov 22, 1995   06:33:46

Number of equations: 15774
Average bandwidth:   1773.57
Maximum bandwidth:   15048
Size of global matrix profile (mb): 223.81
Number of terms in global matrix profile: 27976260    
Minimum recommended bsram under ideal conditions: 26

Size of element file (mb): 43.8171
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 148.533

Number of equations: 26430
Average bandwidth:   1796.68
Maximum bandwidth:   25167
Size of global matrix profile (mb): 379.891
Number of terms in global matrix profile: 47486370    
Minimum recommended bsram under ideal conditions: 26

Size of element file (mb): 43.8171
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 148.533
Using element-by-element static condensation.

Number of equations: 15774
Average bandwidth:   1773.57
Maximum bandwidth:   15048
Size of global matrix profile (mb): 223.81
Number of terms in global matrix profile: 27976260    
Minimum recommended bsram under ideal conditions: 26

Size of element file (mb): 43.8171
Maximum element matrix size (kb): 398.16
Average element matrix size (kb): 148.533

Begin Global Matrix Assembly, Pass 6
Wed Nov 22, 1995   06:36:10

Begin Equation Solve, Pass 6
Wed Nov 22, 1995   06:40:21

Begin Load Calculations
Wed Nov 22, 1995   07:18:00

Begin Displacement and Stress Calculation
Wed Nov 22, 1995   07:20:14

Begin Convergence Check Pass 6
Wed Nov 22, 1995   07:22:37

Completed P-Loop
Wed Nov 22, 1995   07:22:58

Completed Analysis: anlys1
Wed Nov 22, 1995   07:23:00

Completed Sensitivity Step 11 of 11

Completed Global Sensitivity Study
