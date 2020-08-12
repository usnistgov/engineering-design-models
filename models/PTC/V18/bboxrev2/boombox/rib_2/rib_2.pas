------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(50)
Diagnostic Log
Thu May 22, 1997   10:12:08
------------------------------------------------------------

Begin Updating Parameters
Thu May 22, 1997   10:12:50

Parameters:
   rib_2                       50

End Updating Parameters
Thu May 22, 1997   10:13:44

Begin Analysis: "initial_static"
Thu May 22, 1997   10:13:49

Using Sparse Solver

Begin Mass Calculation
Thu May 22, 1997   10:13:57

Begin P-Loop Pass 1
Thu May 22, 1997   10:14:05

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:14:05

Begin Matrix Profile Minimization
Thu May 22, 1997   10:14:05

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:14:05

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:14:10

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:14:10

Number of equations: 3251
Average bandwidth:   109
Maximum bandwidth:   258
Size of global matrix profile (mb): 2.83487
Number of terms in global matrix profile: 354359      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.08426
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.2253

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
Thu May 22, 1997   10:14:17

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:14:22

Begin P-Loop Pass 2
Thu May 22, 1997   10:14:38

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:14:38

Begin Matrix Profile Minimization
Thu May 22, 1997   10:14:38

Begin Element Calculations, Pass 2
Thu May 22, 1997   10:14:38

Begin Global Matrix Assembly, Pass 2
Thu May 22, 1997   10:16:00

Begin Equation Solve, Pass 2
Thu May 22, 1997   10:16:01

Number of equations: 19919
Average bandwidth:   238.54
Maximum bandwidth:   660
Size of global matrix profile (mb): 38.0118
Number of terms in global matrix profile: 4751471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 32.4569
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 268.239

Begin Load Calculations
Thu May 22, 1997   10:16:55

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:17:11

Completed P-Loop
Thu May 22, 1997   10:17:45

Completed Analysis: initial_static
Thu May 22, 1997   10:17:45

Completed Sensitivity Step 1 of 11

Begin Updating Parameters
Thu May 22, 1997   10:17:45

Parameters:
   rib_2                       52

End Updating Parameters
Thu May 22, 1997   10:19:49

Begin Analysis: "initial_static"
Thu May 22, 1997   10:19:54

Begin Mass Calculation
Thu May 22, 1997   10:20:03

Begin P-Loop Pass 1
Thu May 22, 1997   10:20:13

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:20:13

Begin Matrix Profile Minimization
Thu May 22, 1997   10:20:13

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:20:13

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:21:09

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:21:09

Number of equations: 19919
Average bandwidth:   238.54
Maximum bandwidth:   660
Size of global matrix profile (mb): 38.0118
Number of terms in global matrix profile: 4751471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 32.4569
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 268.239

Begin Load Calculations
Thu May 22, 1997   10:21:59

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:22:15

Begin Convergence Check Pass 1
Thu May 22, 1997   10:22:23

Completed P-Loop
Thu May 22, 1997   10:22:30

Completed Analysis: initial_static
Thu May 22, 1997   10:22:30

Completed Sensitivity Step 2 of 11

Begin Updating Parameters
Thu May 22, 1997   10:22:30

Parameters:
   rib_2                       54

End Updating Parameters
Thu May 22, 1997   10:23:31

Begin Analysis: "initial_static"
Thu May 22, 1997   10:23:36

Begin Mass Calculation
Thu May 22, 1997   10:23:45

Begin P-Loop Pass 1
Thu May 22, 1997   10:23:54

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:23:54

Begin Matrix Profile Minimization
Thu May 22, 1997   10:23:54

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:23:55

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:24:51

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:24:51

Number of equations: 19919
Average bandwidth:   238.54
Maximum bandwidth:   660
Size of global matrix profile (mb): 38.0118
Number of terms in global matrix profile: 4751471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 32.4569
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 268.239

Begin Load Calculations
Thu May 22, 1997   10:25:41

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:25:55

Begin Convergence Check Pass 1
Thu May 22, 1997   10:26:03

Completed P-Loop
Thu May 22, 1997   10:26:08

Completed Analysis: initial_static
Thu May 22, 1997   10:26:08

Completed Sensitivity Step 3 of 11

Begin Updating Parameters
Thu May 22, 1997   10:26:08

Parameters:
   rib_2                       56

End Updating Parameters
Thu May 22, 1997   10:27:03

Begin Analysis: "initial_static"
Thu May 22, 1997   10:27:08

Begin Mass Calculation
Thu May 22, 1997   10:27:16

Begin P-Loop Pass 1
Thu May 22, 1997   10:27:24

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:27:24

Begin Matrix Profile Minimization
Thu May 22, 1997   10:27:24

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:27:24

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:28:15

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:28:15

Number of equations: 19919
Average bandwidth:   238.54
Maximum bandwidth:   660
Size of global matrix profile (mb): 38.0118
Number of terms in global matrix profile: 4751471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 32.4569
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 268.239

Begin Load Calculations
Thu May 22, 1997   10:28:58

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:29:12

Begin Convergence Check Pass 1
Thu May 22, 1997   10:29:20

Completed P-Loop
Thu May 22, 1997   10:29:24

Completed Analysis: initial_static
Thu May 22, 1997   10:29:24

Completed Sensitivity Step 4 of 11

Begin Updating Parameters
Thu May 22, 1997   10:29:24

Parameters:
   rib_2                       58

End Updating Parameters
Thu May 22, 1997   10:30:17

Begin Analysis: "initial_static"
Thu May 22, 1997   10:30:23

Begin Mass Calculation
Thu May 22, 1997   10:30:30

Begin P-Loop Pass 1
Thu May 22, 1997   10:30:39

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:30:39

Begin Matrix Profile Minimization
Thu May 22, 1997   10:30:39

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:30:39

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:31:23

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:31:23

Number of equations: 19919
Average bandwidth:   238.54
Maximum bandwidth:   660
Size of global matrix profile (mb): 38.0118
Number of terms in global matrix profile: 4751471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 32.4569
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 268.239

Begin Load Calculations
Thu May 22, 1997   10:32:02

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:32:13

Begin Convergence Check Pass 1
Thu May 22, 1997   10:32:20

Completed P-Loop
Thu May 22, 1997   10:32:24

Completed Analysis: initial_static
Thu May 22, 1997   10:32:24

Completed Sensitivity Step 5 of 11

Begin Updating Parameters
Thu May 22, 1997   10:32:24

Parameters:
   rib_2                       60

End Updating Parameters
Thu May 22, 1997   10:33:13

Begin Analysis: "initial_static"
Thu May 22, 1997   10:33:18

Begin Mass Calculation
Thu May 22, 1997   10:33:26

Begin P-Loop Pass 1
Thu May 22, 1997   10:33:34

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:33:34

Begin Matrix Profile Minimization
Thu May 22, 1997   10:33:34

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:33:34

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:34:19

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:34:19

Number of equations: 19919
Average bandwidth:   238.54
Maximum bandwidth:   660
Size of global matrix profile (mb): 38.0118
Number of terms in global matrix profile: 4751471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 32.4569
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 268.239

Begin Load Calculations
Thu May 22, 1997   10:34:58

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:35:09

Begin Convergence Check Pass 1
Thu May 22, 1997   10:35:17

Completed P-Loop
Thu May 22, 1997   10:35:20

Completed Analysis: initial_static
Thu May 22, 1997   10:35:20

Completed Sensitivity Step 6 of 11

Begin Updating Parameters
Thu May 22, 1997   10:35:20

Parameters:
   rib_2                       62

End Updating Parameters
Thu May 22, 1997   10:36:28

Begin Analysis: "initial_static"
Thu May 22, 1997   10:36:33

Begin Mass Calculation
Thu May 22, 1997   10:36:42

Begin P-Loop Pass 1
Thu May 22, 1997   10:36:50

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:36:51

Begin Matrix Profile Minimization
Thu May 22, 1997   10:36:51

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:36:51

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:36:55

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:36:55

Number of equations: 3479
Average bandwidth:   111.354
Maximum bandwidth:   276
Size of global matrix profile (mb): 3.09921
Number of terms in global matrix profile: 387401      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.2224
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.0954

Begin Load Calculations
Thu May 22, 1997   10:36:57

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:37:04

Begin P-Loop Pass 2
Thu May 22, 1997   10:37:21

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:37:21

Begin Matrix Profile Minimization
Thu May 22, 1997   10:37:21

Begin Element Calculations, Pass 2
Thu May 22, 1997   10:37:21

Begin Global Matrix Assembly, Pass 2
Thu May 22, 1997   10:38:32

Begin Equation Solve, Pass 2
Thu May 22, 1997   10:38:32

Number of equations: 20124
Average bandwidth:   240.465
Maximum bandwidth:   750
Size of global matrix profile (mb): 38.7129
Number of terms in global matrix profile: 4839114     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 32.2086
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 247.759

Begin Load Calculations
Thu May 22, 1997   10:39:11

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:39:25

Completed P-Loop
Thu May 22, 1997   10:39:53

Completed Analysis: initial_static
Thu May 22, 1997   10:39:53

Completed Sensitivity Step 7 of 11

Begin Updating Parameters
Thu May 22, 1997   10:39:53

Parameters:
   rib_2                       64

End Updating Parameters
Thu May 22, 1997   10:40:55

Begin Analysis: "initial_static"
Thu May 22, 1997   10:41:00

Begin Mass Calculation
Thu May 22, 1997   10:41:08

Begin P-Loop Pass 1
Thu May 22, 1997   10:41:16

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:41:17

Begin Matrix Profile Minimization
Thu May 22, 1997   10:41:17

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:41:17

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:41:21

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:41:21

Number of equations: 3443
Average bandwidth:   111.258
Maximum bandwidth:   288
Size of global matrix profile (mb): 3.0645
Number of terms in global matrix profile: 383063      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.18861
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 16.966

Begin Load Calculations
Thu May 22, 1997   10:41:23

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:41:31

Begin P-Loop Pass 2
Thu May 22, 1997   10:41:47

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:41:47

Begin Matrix Profile Minimization
Thu May 22, 1997   10:41:47

Begin Element Calculations, Pass 2
Thu May 22, 1997   10:41:47

Begin Global Matrix Assembly, Pass 2
Thu May 22, 1997   10:43:09

Begin Equation Solve, Pass 2
Thu May 22, 1997   10:43:09

Number of equations: 21737
Average bandwidth:   241.74
Maximum bandwidth:   744
Size of global matrix profile (mb): 42.0376
Number of terms in global matrix profile: 5254699     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 35.9423
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 278.622

Begin Load Calculations
Thu May 22, 1997   10:43:51

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:44:07

Completed P-Loop
Thu May 22, 1997   10:44:36

Completed Analysis: initial_static
Thu May 22, 1997   10:44:36

Completed Sensitivity Step 8 of 11

Begin Updating Parameters
Thu May 22, 1997   10:44:36

Parameters:
   rib_2                       66

End Updating Parameters
Thu May 22, 1997   10:45:30

Begin Analysis: "initial_static"
Thu May 22, 1997   10:45:36

Begin Mass Calculation
Thu May 22, 1997   10:45:44

Begin P-Loop Pass 1
Thu May 22, 1997   10:45:55

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:45:55

Begin Matrix Profile Minimization
Thu May 22, 1997   10:45:55

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:45:56

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:46:53

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:46:53

Number of equations: 21737
Average bandwidth:   241.74
Maximum bandwidth:   744
Size of global matrix profile (mb): 42.0376
Number of terms in global matrix profile: 5254699     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 35.9423
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 278.622

Begin Load Calculations
Thu May 22, 1997   10:47:44

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:48:07

Begin Convergence Check Pass 1
Thu May 22, 1997   10:48:15

Completed P-Loop
Thu May 22, 1997   10:48:19

Completed Analysis: initial_static
Thu May 22, 1997   10:48:19

Completed Sensitivity Step 9 of 11

Begin Updating Parameters
Thu May 22, 1997   10:48:20

Parameters:
   rib_2                       68

End Updating Parameters
Thu May 22, 1997   10:49:26

Begin Analysis: "initial_static"
Thu May 22, 1997   10:49:32

Begin Mass Calculation
Thu May 22, 1997   10:49:40

Begin P-Loop Pass 1
Thu May 22, 1997   10:49:50

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:49:51

Begin Matrix Profile Minimization
Thu May 22, 1997   10:49:51

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:49:51

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:50:50

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:50:50

Number of equations: 21737
Average bandwidth:   241.74
Maximum bandwidth:   744
Size of global matrix profile (mb): 42.0376
Number of terms in global matrix profile: 5254699     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 35.9423
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 278.622

Begin Load Calculations
Thu May 22, 1997   10:51:39

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:51:56

Begin Convergence Check Pass 1
Thu May 22, 1997   10:52:04

Completed P-Loop
Thu May 22, 1997   10:52:09

Completed Analysis: initial_static
Thu May 22, 1997   10:52:09

Completed Sensitivity Step 10 of 11

Begin Updating Parameters
Thu May 22, 1997   10:52:09

Parameters:
   rib_2                       70

End Updating Parameters
Thu May 22, 1997   10:53:18

Begin Analysis: "initial_static"
Thu May 22, 1997   10:53:23

Begin Mass Calculation
Thu May 22, 1997   10:53:31

Begin P-Loop Pass 1
Thu May 22, 1997   10:53:40

Begin Processing Multi-Point Constraints
Thu May 22, 1997   10:53:40

Begin Matrix Profile Minimization
Thu May 22, 1997   10:53:40

Begin Element Calculations, Pass 1
Thu May 22, 1997   10:53:40

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   10:54:39

Begin Equation Solve, Pass 1
Thu May 22, 1997   10:54:39

Number of equations: 21737
Average bandwidth:   241.74
Maximum bandwidth:   744
Size of global matrix profile (mb): 42.0376
Number of terms in global matrix profile: 5254699     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 35.9423
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 278.622

Begin Load Calculations
Thu May 22, 1997   10:55:28

Begin Displacement and Stress Calculation
Thu May 22, 1997   10:55:43

Begin Convergence Check Pass 1
Thu May 22, 1997   10:55:51

Completed P-Loop
Thu May 22, 1997   10:55:55

Completed Analysis: initial_static
Thu May 22, 1997   10:55:55

Completed Sensitivity Step 11 of 11

Completed Global Sensitivity Study
