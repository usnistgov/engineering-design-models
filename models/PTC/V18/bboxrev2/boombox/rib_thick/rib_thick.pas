------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(50)
Diagnostic Log
Wed May 21, 1997   20:04:28
------------------------------------------------------------

Begin Updating Parameters
Wed May 21, 1997   20:15:43

Parameters:
   rib_thick                  0.5

End Updating Parameters
Wed May 21, 1997   20:28:34

Begin Analysis: "initial_static"
Wed May 21, 1997   20:29:42

Using Sparse Solver

Begin Mass Calculation
Wed May 21, 1997   20:32:08

Begin P-Loop Pass 1
Wed May 21, 1997   20:34:31

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:34:33

Begin Matrix Profile Minimization
Wed May 21, 1997   20:34:33

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:34:33

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:35:46

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:35:46

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
Wed May 21, 1997   20:36:26

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:38:35

Begin P-Loop Pass 2
Wed May 21, 1997   20:42:39

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:42:40

Begin Matrix Profile Minimization
Wed May 21, 1997   20:42:40

Begin Element Calculations, Pass 2
Wed May 21, 1997   20:42:41

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   20:52:30

Begin Equation Solve, Pass 2
Wed May 21, 1997   20:52:30

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Wed May 21, 1997   20:58:22

Begin Displacement and Stress Calculation
Wed May 21, 1997   21:01:36

Completed P-Loop
Wed May 21, 1997   21:07:52

Completed Analysis: initial_static
Wed May 21, 1997   21:07:52

Completed Sensitivity Step 1 of 11

Begin Updating Parameters
Wed May 21, 1997   21:07:53

Parameters:
   rib_thick                 0.65

End Updating Parameters
Wed May 21, 1997   21:14:06

Begin Analysis: "initial_static"
Wed May 21, 1997   21:15:23

Begin Mass Calculation
Wed May 21, 1997   21:17:45

Begin P-Loop Pass 1
Wed May 21, 1997   21:19:55

Begin Processing Multi-Point Constraints
Wed May 21, 1997   21:19:56

Begin Matrix Profile Minimization
Wed May 21, 1997   21:19:56

Begin Element Calculations, Pass 1
Wed May 21, 1997   21:19:57

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   21:26:22

Begin Equation Solve, Pass 1
Wed May 21, 1997   21:26:22

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Wed May 21, 1997   21:32:40

Begin Displacement and Stress Calculation
Wed May 21, 1997   21:36:25

Begin Convergence Check Pass 1
Wed May 21, 1997   21:38:34

Completed P-Loop
Wed May 21, 1997   21:39:06

Completed Analysis: initial_static
Wed May 21, 1997   21:39:06

Completed Sensitivity Step 2 of 11

Begin Updating Parameters
Wed May 21, 1997   21:39:07

Parameters:
   rib_thick                  0.8

End Updating Parameters
Wed May 21, 1997   21:51:30

Begin Analysis: "initial_static"
Wed May 21, 1997   21:53:13

Begin Mass Calculation
Wed May 21, 1997   21:55:35

Begin P-Loop Pass 1
Wed May 21, 1997   21:58:02

Begin Processing Multi-Point Constraints
Wed May 21, 1997   21:58:03

Begin Matrix Profile Minimization
Wed May 21, 1997   21:58:03

Begin Element Calculations, Pass 1
Wed May 21, 1997   21:58:04

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   22:04:20

Begin Equation Solve, Pass 1
Wed May 21, 1997   22:04:20

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Wed May 21, 1997   22:08:16

Begin Displacement and Stress Calculation
Wed May 21, 1997   22:09:58

Begin Convergence Check Pass 1
Wed May 21, 1997   22:12:00

Completed P-Loop
Wed May 21, 1997   22:12:41

Completed Analysis: initial_static
Wed May 21, 1997   22:12:41

Completed Sensitivity Step 3 of 11

Begin Updating Parameters
Wed May 21, 1997   22:12:42

Parameters:
   rib_thick                 0.95

End Updating Parameters
Wed May 21, 1997   22:23:25

Begin Analysis: "initial_static"
Wed May 21, 1997   22:23:43

Begin Mass Calculation
Wed May 21, 1997   22:24:23

Begin P-Loop Pass 1
Wed May 21, 1997   22:24:56

Begin Processing Multi-Point Constraints
Wed May 21, 1997   22:24:59

Begin Matrix Profile Minimization
Wed May 21, 1997   22:24:59

Begin Element Calculations, Pass 1
Wed May 21, 1997   22:25:00

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   22:29:57

Begin Equation Solve, Pass 1
Wed May 21, 1997   22:29:57

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Wed May 21, 1997   22:34:42

Begin Displacement and Stress Calculation
Wed May 21, 1997   22:38:02

Begin Convergence Check Pass 1
Wed May 21, 1997   22:39:55

Completed P-Loop
Wed May 21, 1997   22:40:22

Completed Analysis: initial_static
Wed May 21, 1997   22:40:23

Completed Sensitivity Step 4 of 11

Begin Updating Parameters
Wed May 21, 1997   22:40:23

Parameters:
   rib_thick                  1.1

End Updating Parameters
Wed May 21, 1997   22:52:56

Begin Analysis: "initial_static"
Wed May 21, 1997   22:54:14

Begin Mass Calculation
Wed May 21, 1997   22:56:37

Begin P-Loop Pass 1
Wed May 21, 1997   22:58:50

Begin Processing Multi-Point Constraints
Wed May 21, 1997   22:58:51

Begin Matrix Profile Minimization
Wed May 21, 1997   22:58:51

Begin Element Calculations, Pass 1
Wed May 21, 1997   22:58:51

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   23:06:02

Begin Equation Solve, Pass 1
Wed May 21, 1997   23:06:02

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Wed May 21, 1997   23:11:01

Begin Displacement and Stress Calculation
Wed May 21, 1997   23:14:18

Begin Convergence Check Pass 1
Wed May 21, 1997   23:16:28

Completed P-Loop
Wed May 21, 1997   23:16:56

Completed Analysis: initial_static
Wed May 21, 1997   23:16:56

Completed Sensitivity Step 5 of 11

Begin Updating Parameters
Wed May 21, 1997   23:16:57

Parameters:
   rib_thick                 1.25

End Updating Parameters
Wed May 21, 1997   23:30:03

Begin Analysis: "initial_static"
Wed May 21, 1997   23:31:04

Begin Mass Calculation
Wed May 21, 1997   23:32:31

Begin P-Loop Pass 1
Wed May 21, 1997   23:35:10

Begin Processing Multi-Point Constraints
Wed May 21, 1997   23:35:11

Begin Matrix Profile Minimization
Wed May 21, 1997   23:35:11

Begin Element Calculations, Pass 1
Wed May 21, 1997   23:35:12

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   23:42:23

Begin Equation Solve, Pass 1
Wed May 21, 1997   23:42:23

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Wed May 21, 1997   23:47:28

Begin Displacement and Stress Calculation
Wed May 21, 1997   23:50:33

Begin Convergence Check Pass 1
Wed May 21, 1997   23:52:39

Completed P-Loop
Wed May 21, 1997   23:52:55

Completed Analysis: initial_static
Wed May 21, 1997   23:52:55

Completed Sensitivity Step 6 of 11

Begin Updating Parameters
Wed May 21, 1997   23:52:56

Parameters:
   rib_thick                  1.4

End Updating Parameters
Thu May 22, 1997   00:06:27

Begin Analysis: "initial_static"
Thu May 22, 1997   00:08:13

Begin Mass Calculation
Thu May 22, 1997   00:11:07

Begin P-Loop Pass 1
Thu May 22, 1997   00:13:17

Begin Processing Multi-Point Constraints
Thu May 22, 1997   00:13:19

Begin Matrix Profile Minimization
Thu May 22, 1997   00:13:19

Begin Element Calculations, Pass 1
Thu May 22, 1997   00:13:19

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   00:19:26

Begin Equation Solve, Pass 1
Thu May 22, 1997   00:19:26

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Thu May 22, 1997   00:24:24

Begin Displacement and Stress Calculation
Thu May 22, 1997   00:27:26

Begin Convergence Check Pass 1
Thu May 22, 1997   00:29:22

Completed P-Loop
Thu May 22, 1997   00:29:47

Completed Analysis: initial_static
Thu May 22, 1997   00:29:47

Completed Sensitivity Step 7 of 11

Begin Updating Parameters
Thu May 22, 1997   00:29:48

Parameters:
   rib_thick                 1.55

End Updating Parameters
Thu May 22, 1997   00:40:22

Begin Analysis: "initial_static"
Thu May 22, 1997   00:41:50

Begin Mass Calculation
Thu May 22, 1997   00:44:30

Begin P-Loop Pass 1
Thu May 22, 1997   00:46:53

Begin Processing Multi-Point Constraints
Thu May 22, 1997   00:46:55

Begin Matrix Profile Minimization
Thu May 22, 1997   00:46:55

Begin Element Calculations, Pass 1
Thu May 22, 1997   00:46:56

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   00:53:53

Begin Equation Solve, Pass 1
Thu May 22, 1997   00:53:53

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Thu May 22, 1997   00:59:16

Begin Displacement and Stress Calculation
Thu May 22, 1997   01:02:36

Begin Convergence Check Pass 1
Thu May 22, 1997   01:04:36

Completed P-Loop
Thu May 22, 1997   01:04:56

Completed Analysis: initial_static
Thu May 22, 1997   01:04:56

Completed Sensitivity Step 8 of 11

Begin Updating Parameters
Thu May 22, 1997   01:04:57

Parameters:
   rib_thick                  1.7

End Updating Parameters
Thu May 22, 1997   01:15:27

Begin Analysis: "initial_static"
Thu May 22, 1997   01:16:49

Begin Mass Calculation
Thu May 22, 1997   01:19:05

Begin P-Loop Pass 1
Thu May 22, 1997   01:21:48

Begin Processing Multi-Point Constraints
Thu May 22, 1997   01:21:59

Begin Matrix Profile Minimization
Thu May 22, 1997   01:22:00

Begin Element Calculations, Pass 1
Thu May 22, 1997   01:22:00

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   01:25:17

Begin Equation Solve, Pass 1
Thu May 22, 1997   01:25:17

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Thu May 22, 1997   01:27:05

Begin Displacement and Stress Calculation
Thu May 22, 1997   01:28:01

Begin Convergence Check Pass 1
Thu May 22, 1997   01:28:33

Completed P-Loop
Thu May 22, 1997   01:29:19

Completed Analysis: initial_static
Thu May 22, 1997   01:29:20

Completed Sensitivity Step 9 of 11

Begin Updating Parameters
Thu May 22, 1997   01:29:22

Parameters:
   rib_thick                 1.85

End Updating Parameters
Thu May 22, 1997   01:41:32

Begin Analysis: "initial_static"
Thu May 22, 1997   01:42:40

Begin Mass Calculation
Thu May 22, 1997   01:44:58

Begin P-Loop Pass 1
Thu May 22, 1997   01:47:16

Begin Processing Multi-Point Constraints
Thu May 22, 1997   01:47:18

Begin Matrix Profile Minimization
Thu May 22, 1997   01:47:18

Begin Element Calculations, Pass 1
Thu May 22, 1997   01:47:19

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   01:54:46

Begin Equation Solve, Pass 1
Thu May 22, 1997   01:54:46

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Thu May 22, 1997   01:58:10

Begin Displacement and Stress Calculation
Thu May 22, 1997   02:01:35

Begin Convergence Check Pass 1
Thu May 22, 1997   02:03:28

Completed P-Loop
Thu May 22, 1997   02:04:19

Completed Analysis: initial_static
Thu May 22, 1997   02:04:20

Completed Sensitivity Step 10 of 11

Begin Updating Parameters
Thu May 22, 1997   02:04:20

Parameters:
   rib_thick                    2

End Updating Parameters
Thu May 22, 1997   02:14:46

Begin Analysis: "initial_static"
Thu May 22, 1997   02:16:12

Begin Mass Calculation
Thu May 22, 1997   02:18:33

Begin P-Loop Pass 1
Thu May 22, 1997   02:20:59

Begin Processing Multi-Point Constraints
Thu May 22, 1997   02:21:01

Begin Matrix Profile Minimization
Thu May 22, 1997   02:21:02

Begin Element Calculations, Pass 1
Thu May 22, 1997   02:21:02

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   02:28:34

Begin Equation Solve, Pass 1
Thu May 22, 1997   02:28:34

Number of equations: 16119
Average bandwidth:   217.402
Maximum bandwidth:   600
Size of global matrix profile (mb): 28.0344
Number of terms in global matrix profile: 3504297     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 23.3132
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 192.671

Begin Load Calculations
Thu May 22, 1997   02:33:53

Begin Displacement and Stress Calculation
Thu May 22, 1997   02:37:31

Begin Convergence Check Pass 1
Thu May 22, 1997   02:39:31

Completed P-Loop
Thu May 22, 1997   02:39:51

Completed Analysis: initial_static
Thu May 22, 1997   02:39:51

Completed Sensitivity Step 11 of 11

Completed Global Sensitivity Study
