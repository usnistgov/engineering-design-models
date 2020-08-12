------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(50)
Diagnostic Log
Wed May 21, 1997   19:32:18
------------------------------------------------------------

Begin Updating Parameters
Wed May 21, 1997   19:32:55

Parameters:
   rib_1                       15

End Updating Parameters
Wed May 21, 1997   19:33:46

Begin Analysis: "initial_static"
Wed May 21, 1997   19:33:51

Using Sparse Solver

Begin Mass Calculation
Wed May 21, 1997   19:33:58

Begin P-Loop Pass 1
Wed May 21, 1997   19:34:07

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:34:07

Begin Matrix Profile Minimization
Wed May 21, 1997   19:34:07

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:34:07

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:34:11

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:34:11

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
Wed May 21, 1997   19:34:20

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:34:26

Begin P-Loop Pass 2
Wed May 21, 1997   19:34:44

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:34:44

Begin Matrix Profile Minimization
Wed May 21, 1997   19:34:44

Begin Element Calculations, Pass 2
Wed May 21, 1997   19:34:44

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   19:35:47

Begin Equation Solve, Pass 2
Wed May 21, 1997   19:35:47

Number of equations: 17845
Average bandwidth:   225.3
Maximum bandwidth:   654
Size of global matrix profile (mb): 32.1638
Number of terms in global matrix profile: 4020471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 27.0684
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 223.706

Begin Load Calculations
Wed May 21, 1997   19:36:19

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:36:32

Completed P-Loop
Wed May 21, 1997   19:37:01

Completed Analysis: initial_static
Wed May 21, 1997   19:37:01

Completed Sensitivity Step 1 of 11

Begin Updating Parameters
Wed May 21, 1997   19:37:01

Parameters:
   rib_1                     17.5

End Updating Parameters
Wed May 21, 1997   19:38:31

Begin Analysis: "initial_static"
Wed May 21, 1997   19:38:37

Begin Mass Calculation
Wed May 21, 1997   19:38:46

Begin P-Loop Pass 1
Wed May 21, 1997   19:38:55

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:38:55

Begin Matrix Profile Minimization
Wed May 21, 1997   19:38:55

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:38:55

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:39:32

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:39:32

Number of equations: 17845
Average bandwidth:   225.3
Maximum bandwidth:   654
Size of global matrix profile (mb): 32.1638
Number of terms in global matrix profile: 4020471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 27.0684
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 223.706

Begin Load Calculations
Wed May 21, 1997   19:40:06

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:40:17

Begin Convergence Check Pass 1
Wed May 21, 1997   19:40:25

Completed P-Loop
Wed May 21, 1997   19:40:29

Completed Analysis: initial_static
Wed May 21, 1997   19:40:29

Completed Sensitivity Step 2 of 11

Begin Updating Parameters
Wed May 21, 1997   19:40:29

Parameters:
   rib_1                       20

End Updating Parameters
Wed May 21, 1997   19:41:24

Begin Analysis: "initial_static"
Wed May 21, 1997   19:41:29

Begin Mass Calculation
Wed May 21, 1997   19:41:38

Begin P-Loop Pass 1
Wed May 21, 1997   19:41:47

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:41:47

Begin Matrix Profile Minimization
Wed May 21, 1997   19:41:47

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:41:47

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:42:24

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:42:24

Number of equations: 17845
Average bandwidth:   225.3
Maximum bandwidth:   654
Size of global matrix profile (mb): 32.1638
Number of terms in global matrix profile: 4020471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 27.0684
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 223.706

Begin Load Calculations
Wed May 21, 1997   19:42:58

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:43:09

Begin Convergence Check Pass 1
Wed May 21, 1997   19:43:18

Completed P-Loop
Wed May 21, 1997   19:43:22

Completed Analysis: initial_static
Wed May 21, 1997   19:43:22

Completed Sensitivity Step 3 of 11

Begin Updating Parameters
Wed May 21, 1997   19:43:22

Parameters:
   rib_1                     22.5

End Updating Parameters
Wed May 21, 1997   19:44:17

Begin Analysis: "initial_static"
Wed May 21, 1997   19:44:22

Begin Mass Calculation
Wed May 21, 1997   19:44:31

Begin P-Loop Pass 1
Wed May 21, 1997   19:44:39

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:44:39

Begin Matrix Profile Minimization
Wed May 21, 1997   19:44:39

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:44:39

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:45:18

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:45:18

Number of equations: 17845
Average bandwidth:   225.3
Maximum bandwidth:   654
Size of global matrix profile (mb): 32.1638
Number of terms in global matrix profile: 4020471     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 27.0684
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 223.706

Begin Load Calculations
Wed May 21, 1997   19:45:52

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:46:03

Begin Convergence Check Pass 1
Wed May 21, 1997   19:46:11

Completed P-Loop
Wed May 21, 1997   19:46:15

Completed Analysis: initial_static
Wed May 21, 1997   19:46:15

Completed Sensitivity Step 4 of 11

Begin Updating Parameters
Wed May 21, 1997   19:46:15

Parameters:
   rib_1                       25

End Updating Parameters
Wed May 21, 1997   19:47:19

Begin Analysis: "initial_static"
Wed May 21, 1997   19:47:24

Begin Mass Calculation
Wed May 21, 1997   19:47:32

Begin P-Loop Pass 1
Wed May 21, 1997   19:47:41

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:47:41

Begin Matrix Profile Minimization
Wed May 21, 1997   19:47:41

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:47:41

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:47:46

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:47:46

Number of equations: 3395
Average bandwidth:   109.976
Maximum bandwidth:   258
Size of global matrix profile (mb): 2.98694
Number of terms in global matrix profile: 373367      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.17661
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.2747

Begin Load Calculations
Wed May 21, 1997   19:47:49

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:47:55

Begin P-Loop Pass 2
Wed May 21, 1997   19:48:13

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:48:13

Begin Matrix Profile Minimization
Wed May 21, 1997   19:48:13

Begin Element Calculations, Pass 2
Wed May 21, 1997   19:48:13

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   19:49:03

Begin Equation Solve, Pass 2
Wed May 21, 1997   19:49:03

Number of equations: 16758
Average bandwidth:   221.064
Maximum bandwidth:   702
Size of global matrix profile (mb): 29.6367
Number of terms in global matrix profile: 3704589     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 24.2971
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.834

Begin Load Calculations
Wed May 21, 1997   19:49:33

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:49:45

Completed P-Loop
Wed May 21, 1997   19:50:13

Completed Analysis: initial_static
Wed May 21, 1997   19:50:13

Completed Sensitivity Step 5 of 11

Begin Updating Parameters
Wed May 21, 1997   19:50:13

Parameters:
   rib_1                     27.5

End Updating Parameters
Wed May 21, 1997   19:51:08

Begin Analysis: "initial_static"
Wed May 21, 1997   19:51:13

Begin Mass Calculation
Wed May 21, 1997   19:51:22

Begin P-Loop Pass 1
Wed May 21, 1997   19:51:31

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:51:31

Begin Matrix Profile Minimization
Wed May 21, 1997   19:51:31

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:51:31

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:52:04

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:52:04

Number of equations: 16758
Average bandwidth:   221.064
Maximum bandwidth:   702
Size of global matrix profile (mb): 29.6367
Number of terms in global matrix profile: 3704589     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 24.2971
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.834

Begin Load Calculations
Wed May 21, 1997   19:52:35

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:52:47

Begin Convergence Check Pass 1
Wed May 21, 1997   19:52:55

Completed P-Loop
Wed May 21, 1997   19:52:58

Completed Analysis: initial_static
Wed May 21, 1997   19:52:58

Completed Sensitivity Step 6 of 11

Begin Updating Parameters
Wed May 21, 1997   19:52:58

Parameters:
   rib_1                       30

End Updating Parameters
Wed May 21, 1997   19:54:01

Begin Analysis: "initial_static"
Wed May 21, 1997   19:54:06

Begin Mass Calculation
Wed May 21, 1997   19:54:16

Begin P-Loop Pass 1
Wed May 21, 1997   19:54:25

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:54:25

Begin Matrix Profile Minimization
Wed May 21, 1997   19:54:25

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:54:25

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:54:31

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:54:31

Number of equations: 3599
Average bandwidth:   114.887
Maximum bandwidth:   288
Size of global matrix profile (mb): 3.30782
Number of terms in global matrix profile: 413477      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.3065
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.2127

Begin Load Calculations
Wed May 21, 1997   19:54:33

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:54:39

Begin P-Loop Pass 2
Wed May 21, 1997   19:54:58

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:54:58

Begin Matrix Profile Minimization
Wed May 21, 1997   19:54:58

Begin Element Calculations, Pass 2
Wed May 21, 1997   19:54:58

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   19:55:46

Begin Equation Solve, Pass 2
Wed May 21, 1997   19:55:46

Number of equations: 16159
Average bandwidth:   216.538
Maximum bandwidth:   696
Size of global matrix profile (mb): 27.9924
Number of terms in global matrix profile: 3499044     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 22.6344
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 168.913

Begin Load Calculations
Wed May 21, 1997   19:56:12

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:56:23

Completed P-Loop
Wed May 21, 1997   19:56:52

Completed Analysis: initial_static
Wed May 21, 1997   19:56:52

Completed Sensitivity Step 7 of 11

Begin Updating Parameters
Wed May 21, 1997   19:56:52

Parameters:
   rib_1                     32.5

End Updating Parameters
Wed May 21, 1997   19:57:54

Begin Analysis: "initial_static"
Wed May 21, 1997   19:57:59

Begin Mass Calculation
Wed May 21, 1997   19:58:08

Begin P-Loop Pass 1
Wed May 21, 1997   19:58:17

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:58:17

Begin Matrix Profile Minimization
Wed May 21, 1997   19:58:17

Begin Element Calculations, Pass 1
Wed May 21, 1997   19:58:17

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   19:58:23

Begin Equation Solve, Pass 1
Wed May 21, 1997   19:58:23

Number of equations: 3707
Average bandwidth:   113.749
Maximum bandwidth:   276
Size of global matrix profile (mb): 3.37334
Number of terms in global matrix profile: 421667      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.36506
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.1381

Begin Load Calculations
Wed May 21, 1997   19:58:25

Begin Displacement and Stress Calculation
Wed May 21, 1997   19:58:31

Begin P-Loop Pass 2
Wed May 21, 1997   19:58:50

Begin Processing Multi-Point Constraints
Wed May 21, 1997   19:58:51

Begin Matrix Profile Minimization
Wed May 21, 1997   19:58:51

Begin Element Calculations, Pass 2
Wed May 21, 1997   19:58:51

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   19:59:39

Begin Equation Solve, Pass 2
Wed May 21, 1997   19:59:39

Number of equations: 16411
Average bandwidth:   214.154
Maximum bandwidth:   696
Size of global matrix profile (mb): 28.1159
Number of terms in global matrix profile: 3514488     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 22.8637
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 165.679

Begin Load Calculations
Wed May 21, 1997   20:00:05

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:00:16

Completed P-Loop
Wed May 21, 1997   20:00:45

Completed Analysis: initial_static
Wed May 21, 1997   20:00:45

Completed Sensitivity Step 8 of 11

Begin Updating Parameters
Wed May 21, 1997   20:00:45

Parameters:
   rib_1                       35

End Updating Parameters
Wed May 21, 1997   20:01:48

Begin Analysis: "initial_static"
Wed May 21, 1997   20:01:53

Begin Mass Calculation
Wed May 21, 1997   20:02:02

Begin P-Loop Pass 1
Wed May 21, 1997   20:02:10

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:02:10

Begin Matrix Profile Minimization
Wed May 21, 1997   20:02:10

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:02:10

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:02:17

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:02:17

Number of equations: 3611
Average bandwidth:   110.107
Maximum bandwidth:   276
Size of global matrix profile (mb): 3.18076
Number of terms in global matrix profile: 397595      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.29373
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.1174

Begin Load Calculations
Wed May 21, 1997   20:02:20

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:02:26

Begin P-Loop Pass 2
Wed May 21, 1997   20:02:43

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:02:44

Begin Matrix Profile Minimization
Wed May 21, 1997   20:02:44

Begin Element Calculations, Pass 2
Wed May 21, 1997   20:02:44

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   20:03:28

Begin Equation Solve, Pass 2
Wed May 21, 1997   20:03:28

Number of equations: 15787
Average bandwidth:   213.365
Maximum bandwidth:   630
Size of global matrix profile (mb): 26.9472
Number of terms in global matrix profile: 3368400     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.8596
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 163.131

Begin Load Calculations
Wed May 21, 1997   20:03:52

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:04:03

Completed P-Loop
Wed May 21, 1997   20:04:30

Completed Analysis: initial_static
Wed May 21, 1997   20:04:30

Completed Sensitivity Step 9 of 11

Begin Updating Parameters
Wed May 21, 1997   20:04:30

Parameters:
   rib_1                     37.5

End Updating Parameters
Wed May 21, 1997   20:05:34

Begin Analysis: "initial_static"
Wed May 21, 1997   20:05:38

Begin Mass Calculation
Wed May 21, 1997   20:05:47

Begin P-Loop Pass 1
Wed May 21, 1997   20:05:56

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:05:56

Begin Matrix Profile Minimization
Wed May 21, 1997   20:05:56

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:05:56

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:06:02

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:06:02

Number of equations: 3695
Average bandwidth:   111.402
Maximum bandwidth:   276
Size of global matrix profile (mb): 3.29303
Number of terms in global matrix profile: 411629      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.36318
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.2495

Begin Load Calculations
Wed May 21, 1997   20:06:05

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:06:12

Begin P-Loop Pass 2
Wed May 21, 1997   20:06:31

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:06:31

Begin Matrix Profile Minimization
Wed May 21, 1997   20:06:31

Begin Element Calculations, Pass 2
Wed May 21, 1997   20:06:31

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   20:07:25

Begin Equation Solve, Pass 2
Wed May 21, 1997   20:07:25

Number of equations: 18162
Average bandwidth:   224.055
Maximum bandwidth:   630
Size of global matrix profile (mb): 32.5542
Number of terms in global matrix profile: 4069281     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 26.5102
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 193.505

Begin Load Calculations
Wed May 21, 1997   20:07:55

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:08:07

Completed P-Loop
Wed May 21, 1997   20:08:37

Completed Analysis: initial_static
Wed May 21, 1997   20:08:37

Completed Sensitivity Step 10 of 11

Begin Updating Parameters
Wed May 21, 1997   20:08:37

Parameters:
   rib_1                       40

End Updating Parameters
Wed May 21, 1997   20:09:44

Begin Analysis: "initial_static"
Wed May 21, 1997   20:09:50

Begin Mass Calculation
Wed May 21, 1997   20:09:59

Begin P-Loop Pass 1
Wed May 21, 1997   20:10:08

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:10:09

Begin Matrix Profile Minimization
Wed May 21, 1997   20:10:09

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:10:09

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:10:14

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:10:14

Number of equations: 3749
Average bandwidth:   111.581
Maximum bandwidth:   276
Size of global matrix profile (mb): 3.34653
Number of terms in global matrix profile: 418316      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.39246
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.212

Begin Load Calculations
Wed May 21, 1997   20:10:17

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:10:24

Begin P-Loop Pass 2
Wed May 21, 1997   20:10:45

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:10:45

Begin Matrix Profile Minimization
Wed May 21, 1997   20:10:45

Begin Element Calculations, Pass 2
Wed May 21, 1997   20:10:45

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   20:11:33

Begin Equation Solve, Pass 2
Wed May 21, 1997   20:11:33

Number of equations: 15979
Average bandwidth:   211.064
Maximum bandwidth:   606
Size of global matrix profile (mb): 26.9808
Number of terms in global matrix profile: 3372594     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.7282
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 156.318

Begin Load Calculations
Wed May 21, 1997   20:12:04

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:12:17

Completed P-Loop
Wed May 21, 1997   20:12:46

Completed Analysis: initial_static
Wed May 21, 1997   20:12:46

Completed Sensitivity Step 11 of 11

Completed Global Sensitivity Study
