------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(50)
Diagnostic Log
Wed May 21, 1997   19:48:38
------------------------------------------------------------

Begin Updating Parameters
Wed May 21, 1997   19:49:11

Parameters:
   rib_3                       85

End Updating Parameters
Wed May 21, 1997   19:50:00

Begin Analysis: "initial_static"
Wed May 21, 1997   19:50:05

Using Sparse Solver

Begin Mass Calculation
Wed May 21, 1997   19:50:13

Begin P-Loop Pass 1
Wed May 21, 1997   19:50:20

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:50:21

Begin Matrix Profile Minimization
Wed May 21, 1997   19:50:21

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:50:21

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:50:25

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:50:25

Number of equations: 3539
Average bandwidth:   111.461
Maximum bandwidth:   294
Size of global matrix profile (mb): 3.1557
Number of terms in global matrix profile: 394462      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.24981
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.1741

NOTES:
Solver RAM allocation can be done with a single parameter,
called solram.  If the Pro/MECHANICA Structure/Thermal
engine is the only memory-intensive application running on
your computer, performance will usually be best if you set
solram equal to half of your machine RAM.  For example,
solram 60 is a good choice for a machine with 128 MB of RAM. 

If you are running other memory-intensive applications on
your computer, decrease the solram allocation accordingly.
For example, set solram to 0.25 times machine RAM if you are
running two large applications at once.  However, you often
can run two large jobs faster one after another than if you
try to run both jobs at once.

The purpose of solram is to reduce the amount of disk I/O.
If you set solram too high, performance will usually suffer,
even on machines with very large RAM, because there will not
be enough machine RAM for other important data.  For
example, Pro/MECHANICA allocates many large, non-solver
memory areas that will cause excessive swapping unless you
leave enough spare machine RAM.  You must also leave enough
RAM for the operating system to do disk caching.  Disk
caching improves filesystem performance by holding file data
in RAM for faster access.  Setting solram to half machine
RAM is usually the best compromise between reducing the
amount of disk I/O, and leaving enough machine RAM for disk
caching and for other data.

If you set solram too low, performance will suffer because
Pro/MECHANICA must transfer data between machine RAM and
disk files many more times than with a larger setting.
For example, performance may degrade significantly if you
set solram to 0.1 times machine RAM or less.  A preferable
minimum is 0.25 times machine RAM.

The available swap space on your machine must be greater
than the maximum memory usage of your job.  The available
disk space on your machine must be greater than the maximum
disk usage of your job.  You can monitor the resource usage
of your job in the log (stt) file.  Your job may fail if
your machine does not have enough available disk space or
swap space, or if the maximum memory usage of your job is
greater than the memory limits set for your operating system.

Begin Load Calculations
Wed May 21, 1997   19:50:31

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:50:37

Begin P-Loop Pass 2
Wed May 21, 1997   19:50:52

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:50:52

Begin Matrix Profile Minimization
Wed May 21, 1997   19:50:52

Begin Element Calculations, Pass 2
Wed May 21, 1997   19:50:52

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   19:52:03

Begin Equation Solve, Pass 2
Wed May 21, 1997   19:52:03

Number of equations: 22350
Average bandwidth:   247.062
Maximum bandwidth:   762
Size of global matrix profile (mb): 44.1748
Number of terms in global matrix profile: 5521845     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 37.216
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 284.092

Begin Load Calculations
Wed May 21, 1997   19:52:50

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:53:05

Completed P-Loop
Wed May 21, 1997   19:53:35

Completed Analysis: initial_static
Wed May 21, 1997   19:53:35

Completed Sensitivity Step 1 of 11

Begin Updating Parameters
Wed May 21, 1997   19:53:35

Parameters:
   rib_3                     87.5

End Updating Parameters
Wed May 21, 1997   19:56:01

Begin Analysis: "initial_static"
Wed May 21, 1997   19:56:06

Begin Mass Calculation
Wed May 21, 1997   19:56:14

Begin P-Loop Pass 1
Wed May 21, 1997   19:56:22

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:56:22

Begin Matrix Profile Minimization
Wed May 21, 1997   19:56:22

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:56:22

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:56:27

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:56:27

Number of equations: 3539
Average bandwidth:   110.515
Maximum bandwidth:   276
Size of global matrix profile (mb): 3.12891
Number of terms in global matrix profile: 391114      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.24981
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.1741

Begin Load Calculations
Wed May 21, 1997   19:56:30

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:56:35

Begin P-Loop Pass 2
Wed May 21, 1997   19:56:49

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:56:49

Begin Matrix Profile Minimization
Wed May 21, 1997   19:56:49

Begin Element Calculations, Pass 2
Wed May 21, 1997   19:56:49

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   19:57:48

Begin Equation Solve, Pass 2
Wed May 21, 1997   19:57:48

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   19:58:29

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:58:43

Completed P-Loop
Wed May 21, 1997   19:59:11

Completed Analysis: initial_static
Wed May 21, 1997   19:59:11

Completed Sensitivity Step 2 of 11

Begin Updating Parameters
Wed May 21, 1997   19:59:11

Parameters:
   rib_3                       90

End Updating Parameters
Wed May 21, 1997   19:59:55

Begin Analysis: "initial_static"
Wed May 21, 1997   20:00:00

Begin Mass Calculation
Wed May 21, 1997   20:00:07

Begin P-Loop Pass 1
Wed May 21, 1997   20:00:15

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:00:15

Begin Matrix Profile Minimization
Wed May 21, 1997   20:00:15

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:00:15

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:00:55

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:00:55

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:01:36

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:01:50

Begin Convergence Check Pass 1
Wed May 21, 1997   20:01:57

Completed P-Loop
Wed May 21, 1997   20:02:03

Completed Analysis: initial_static
Wed May 21, 1997   20:02:03

Completed Sensitivity Step 3 of 11

Begin Updating Parameters
Wed May 21, 1997   20:02:03

Parameters:
   rib_3                     92.5

End Updating Parameters
Wed May 21, 1997   20:02:45

Begin Analysis: "initial_static"
Wed May 21, 1997   20:02:49

Begin Mass Calculation
Wed May 21, 1997   20:02:56

Begin P-Loop Pass 1
Wed May 21, 1997   20:03:05

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:03:05

Begin Matrix Profile Minimization
Wed May 21, 1997   20:03:05

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:03:05

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:03:48

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:03:48

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:04:27

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:04:41

Begin Convergence Check Pass 1
Wed May 21, 1997   20:04:48

Completed P-Loop
Wed May 21, 1997   20:04:53

Completed Analysis: initial_static
Wed May 21, 1997   20:04:53

Completed Sensitivity Step 4 of 11

Begin Updating Parameters
Wed May 21, 1997   20:04:53

Parameters:
   rib_3                       95

End Updating Parameters
Wed May 21, 1997   20:05:36

Begin Analysis: "initial_static"
Wed May 21, 1997   20:05:41

Begin Mass Calculation
Wed May 21, 1997   20:05:48

Begin P-Loop Pass 1
Wed May 21, 1997   20:05:56

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:05:56

Begin Matrix Profile Minimization
Wed May 21, 1997   20:05:56

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:05:56

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:06:38

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:06:38

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:07:17

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:07:30

Begin Convergence Check Pass 1
Wed May 21, 1997   20:07:37

Completed P-Loop
Wed May 21, 1997   20:07:42

Completed Analysis: initial_static
Wed May 21, 1997   20:07:42

Completed Sensitivity Step 5 of 11

Begin Updating Parameters
Wed May 21, 1997   20:07:42

Parameters:
   rib_3                     97.5

End Updating Parameters
Wed May 21, 1997   20:08:26

Begin Analysis: "initial_static"
Wed May 21, 1997   20:08:30

Begin Mass Calculation
Wed May 21, 1997   20:08:39

Begin P-Loop Pass 1
Wed May 21, 1997   20:08:46

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:08:46

Begin Matrix Profile Minimization
Wed May 21, 1997   20:08:46

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:08:46

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:09:23

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:09:23

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:10:01

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:10:13

Begin Convergence Check Pass 1
Wed May 21, 1997   20:10:20

Completed P-Loop
Wed May 21, 1997   20:10:25

Completed Analysis: initial_static
Wed May 21, 1997   20:10:25

Completed Sensitivity Step 6 of 11

Begin Updating Parameters
Wed May 21, 1997   20:10:25

Parameters:
   rib_3                      100

End Updating Parameters
Wed May 21, 1997   20:11:07

Begin Analysis: "initial_static"
Wed May 21, 1997   20:11:12

Begin Mass Calculation
Wed May 21, 1997   20:11:19

Begin P-Loop Pass 1
Wed May 21, 1997   20:11:27

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:11:27

Begin Matrix Profile Minimization
Wed May 21, 1997   20:11:27

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:11:27

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:12:03

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:12:03

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:12:40

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:12:51

Begin Convergence Check Pass 1
Wed May 21, 1997   20:12:58

Completed P-Loop
Wed May 21, 1997   20:13:02

Completed Analysis: initial_static
Wed May 21, 1997   20:13:02

Completed Sensitivity Step 7 of 11

Begin Updating Parameters
Wed May 21, 1997   20:13:02

Parameters:
   rib_3                    102.5

End Updating Parameters
Wed May 21, 1997   20:13:45

Begin Analysis: "initial_static"
Wed May 21, 1997   20:13:50

Begin Mass Calculation
Wed May 21, 1997   20:13:57

Begin P-Loop Pass 1
Wed May 21, 1997   20:14:04

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:14:05

Begin Matrix Profile Minimization
Wed May 21, 1997   20:14:05

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:14:05

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:14:40

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:14:40

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:15:15

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:15:26

Begin Convergence Check Pass 1
Wed May 21, 1997   20:15:32

Completed P-Loop
Wed May 21, 1997   20:15:36

Completed Analysis: initial_static
Wed May 21, 1997   20:15:36

Completed Sensitivity Step 8 of 11

Begin Updating Parameters
Wed May 21, 1997   20:15:36

Parameters:
   rib_3                      105

End Updating Parameters
Wed May 21, 1997   20:16:18

Begin Analysis: "initial_static"
Wed May 21, 1997   20:16:23

Begin Mass Calculation
Wed May 21, 1997   20:16:30

Begin P-Loop Pass 1
Wed May 21, 1997   20:16:38

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:16:38

Begin Matrix Profile Minimization
Wed May 21, 1997   20:16:38

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:16:38

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:17:13

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:17:13

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:17:48

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:17:58

Begin Convergence Check Pass 1
Wed May 21, 1997   20:18:04

Completed P-Loop
Wed May 21, 1997   20:18:08

Completed Analysis: initial_static
Wed May 21, 1997   20:18:08

Completed Sensitivity Step 9 of 11

Begin Updating Parameters
Wed May 21, 1997   20:18:08

Parameters:
   rib_3                    107.5

End Updating Parameters
Wed May 21, 1997   20:18:51

Begin Analysis: "initial_static"
Wed May 21, 1997   20:18:56

Begin Mass Calculation
Wed May 21, 1997   20:19:03

Begin P-Loop Pass 1
Wed May 21, 1997   20:19:10

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:19:11

Begin Matrix Profile Minimization
Wed May 21, 1997   20:19:11

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:19:11

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:19:50

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:19:50

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:20:24

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:20:33

Begin Convergence Check Pass 1
Wed May 21, 1997   20:20:40

Completed P-Loop
Wed May 21, 1997   20:20:44

Completed Analysis: initial_static
Wed May 21, 1997   20:20:44

Completed Sensitivity Step 10 of 11

Begin Updating Parameters
Wed May 21, 1997   20:20:44

Parameters:
   rib_3                      110

End Updating Parameters
Wed May 21, 1997   20:21:24

Begin Analysis: "initial_static"
Wed May 21, 1997   20:21:29

Begin Mass Calculation
Wed May 21, 1997   20:21:36

Begin P-Loop Pass 1
Wed May 21, 1997   20:21:44

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:21:44

Begin Matrix Profile Minimization
Wed May 21, 1997   20:21:44

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:21:44

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:22:22

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:22:22

Number of equations: 20947
Average bandwidth:   237.401
Maximum bandwidth:   708
Size of global matrix profile (mb): 39.7828
Number of terms in global matrix profile: 4972848     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 33.3496
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 254.577

Begin Load Calculations
Wed May 21, 1997   20:22:55

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:23:05

Begin Convergence Check Pass 1
Wed May 21, 1997   20:23:11

Completed P-Loop
Wed May 21, 1997   20:23:15

Completed Analysis: initial_static
Wed May 21, 1997   20:23:15

Completed Sensitivity Step 11 of 11

Completed Global Sensitivity Study
