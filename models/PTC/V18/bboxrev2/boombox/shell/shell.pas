------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(50)
Diagnostic Log
Wed May 21, 1997   20:08:24
------------------------------------------------------------

Begin Updating Parameters
Wed May 21, 1997   20:22:13

Parameters:
   shell                      0.5

End Updating Parameters
Wed May 21, 1997   20:32:31

Begin Analysis: "initial_static"
Wed May 21, 1997   20:33:50

Using Sparse Solver

Begin Mass Calculation
Wed May 21, 1997   20:36:22

Begin P-Loop Pass 1
Wed May 21, 1997   20:38:36

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:38:38

Begin Matrix Profile Minimization
Wed May 21, 1997   20:38:38

Begin Element Calculations, Pass 1
Wed May 21, 1997   20:38:38

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   20:39:50

Begin Equation Solve, Pass 1
Wed May 21, 1997   20:39:50

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
Wed May 21, 1997   20:40:08

Begin Displacement and Stress Calculation
Wed May 21, 1997   20:43:23

Begin P-Loop Pass 2
Wed May 21, 1997   20:48:00

Begin Processing Multi-Point Constraints
Wed May 21, 1997   20:48:00

Begin Matrix Profile Minimization
Wed May 21, 1997   20:48:00

Begin Element Calculations, Pass 2
Wed May 21, 1997   20:48:00

Begin Global Matrix Assembly, Pass 2
Wed May 21, 1997   20:56:59

Begin Equation Solve, Pass 2
Wed May 21, 1997   20:56:59

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Wed May 21, 1997   21:02:51

Begin Displacement and Stress Calculation
Wed May 21, 1997   21:06:46

Completed P-Loop
Wed May 21, 1997   21:11:50

Completed Analysis: initial_static
Wed May 21, 1997   21:11:51

Completed Sensitivity Step 1 of 11

Begin Updating Parameters
Wed May 21, 1997   21:11:52

Parameters:
   shell                     0.65

End Updating Parameters
Wed May 21, 1997   21:20:10

Begin Analysis: "initial_static"
Wed May 21, 1997   21:21:25

Begin Mass Calculation
Wed May 21, 1997   21:24:11

Begin P-Loop Pass 1
Wed May 21, 1997   21:26:48

Begin Processing Multi-Point Constraints
Wed May 21, 1997   21:26:48

Begin Matrix Profile Minimization
Wed May 21, 1997   21:26:48

Begin Element Calculations, Pass 1
Wed May 21, 1997   21:26:49

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   21:37:11

Begin Equation Solve, Pass 1
Wed May 21, 1997   21:37:11

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Wed May 21, 1997   21:42:41

Begin Displacement and Stress Calculation
Wed May 21, 1997   21:46:32

Begin Convergence Check Pass 1
Wed May 21, 1997   21:48:32

Completed P-Loop
Wed May 21, 1997   21:49:02

Completed Analysis: initial_static
Wed May 21, 1997   21:49:02

Completed Sensitivity Step 2 of 11

Begin Updating Parameters
Wed May 21, 1997   21:49:02

Parameters:
   shell                      0.8

End Updating Parameters
Wed May 21, 1997   22:00:24

Begin Analysis: "initial_static"
Wed May 21, 1997   22:01:26

Begin Mass Calculation
Wed May 21, 1997   22:04:23

Begin P-Loop Pass 1
Wed May 21, 1997   22:06:55

Begin Processing Multi-Point Constraints
Wed May 21, 1997   22:07:02

Begin Matrix Profile Minimization
Wed May 21, 1997   22:07:02

Begin Element Calculations, Pass 1
Wed May 21, 1997   22:07:02

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   22:12:14

Begin Equation Solve, Pass 1
Wed May 21, 1997   22:12:14

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Wed May 21, 1997   22:17:33

Begin Displacement and Stress Calculation
Wed May 21, 1997   22:21:45

Begin Convergence Check Pass 1
Wed May 21, 1997   22:22:55

Completed P-Loop
Wed May 21, 1997   22:23:10

Completed Analysis: initial_static
Wed May 21, 1997   22:23:10

Completed Sensitivity Step 3 of 11

Begin Updating Parameters
Wed May 21, 1997   22:23:11

Parameters:
   shell                     0.95

End Updating Parameters
Wed May 21, 1997   22:35:00

Begin Analysis: "initial_static"
Wed May 21, 1997   22:36:26

Begin Mass Calculation
Wed May 21, 1997   22:38:51

Begin P-Loop Pass 1
Wed May 21, 1997   22:41:09

Begin Processing Multi-Point Constraints
Wed May 21, 1997   22:41:10

Begin Matrix Profile Minimization
Wed May 21, 1997   22:41:10

Begin Element Calculations, Pass 1
Wed May 21, 1997   22:41:10

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   22:49:13

Begin Equation Solve, Pass 1
Wed May 21, 1997   22:49:13

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Wed May 21, 1997   22:54:11

Begin Displacement and Stress Calculation
Wed May 21, 1997   22:57:21

Begin Convergence Check Pass 1
Wed May 21, 1997   22:59:28

Completed P-Loop
Wed May 21, 1997   22:59:57

Completed Analysis: initial_static
Wed May 21, 1997   22:59:57

Completed Sensitivity Step 4 of 11

Begin Updating Parameters
Wed May 21, 1997   22:59:58

Parameters:
   shell                      1.1

End Updating Parameters
Wed May 21, 1997   23:12:49

Begin Analysis: "initial_static"
Wed May 21, 1997   23:14:07

Begin Mass Calculation
Wed May 21, 1997   23:16:33

Begin P-Loop Pass 1
Wed May 21, 1997   23:18:35

Begin Processing Multi-Point Constraints
Wed May 21, 1997   23:18:39

Begin Matrix Profile Minimization
Wed May 21, 1997   23:18:39

Begin Element Calculations, Pass 1
Wed May 21, 1997   23:18:44

Begin Global Matrix Assembly, Pass 1
Wed May 21, 1997   23:28:04

Begin Equation Solve, Pass 1
Wed May 21, 1997   23:28:04

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Wed May 21, 1997   23:32:18

Begin Displacement and Stress Calculation
Wed May 21, 1997   23:35:05

Begin Convergence Check Pass 1
Wed May 21, 1997   23:37:17

Completed P-Loop
Wed May 21, 1997   23:37:40

Completed Analysis: initial_static
Wed May 21, 1997   23:37:41

Completed Sensitivity Step 5 of 11

Begin Updating Parameters
Wed May 21, 1997   23:37:41

Parameters:
   shell                     1.25

End Updating Parameters
Wed May 21, 1997   23:49:35

Begin Analysis: "initial_static"
Wed May 21, 1997   23:50:48

Begin Mass Calculation
Wed May 21, 1997   23:52:59

Begin P-Loop Pass 1
Wed May 21, 1997   23:55:11

Begin Processing Multi-Point Constraints
Wed May 21, 1997   23:55:12

Begin Matrix Profile Minimization
Wed May 21, 1997   23:55:12

Begin Element Calculations, Pass 1
Wed May 21, 1997   23:55:13

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   00:04:06

Begin Equation Solve, Pass 1
Thu May 22, 1997   00:04:06

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Thu May 22, 1997   00:10:23

Begin Displacement and Stress Calculation
Thu May 22, 1997   00:13:25

Begin Convergence Check Pass 1
Thu May 22, 1997   00:15:37

Completed P-Loop
Thu May 22, 1997   00:15:57

Completed Analysis: initial_static
Thu May 22, 1997   00:15:57

Completed Sensitivity Step 6 of 11

Begin Updating Parameters
Thu May 22, 1997   00:15:58

Parameters:
   shell                      1.4

End Updating Parameters
Thu May 22, 1997   00:28:50

Begin Analysis: "initial_static"
Thu May 22, 1997   00:30:03

Begin Mass Calculation
Thu May 22, 1997   00:32:36

Begin P-Loop Pass 1
Thu May 22, 1997   00:34:47

Begin Processing Multi-Point Constraints
Thu May 22, 1997   00:34:48

Begin Matrix Profile Minimization
Thu May 22, 1997   00:34:48

Begin Element Calculations, Pass 1
Thu May 22, 1997   00:34:48

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   00:43:37

Begin Equation Solve, Pass 1
Thu May 22, 1997   00:43:37

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Thu May 22, 1997   00:48:25

Begin Displacement and Stress Calculation
Thu May 22, 1997   00:52:02

Begin Convergence Check Pass 1
Thu May 22, 1997   00:54:21

Completed P-Loop
Thu May 22, 1997   00:54:50

Completed Analysis: initial_static
Thu May 22, 1997   00:54:50

Completed Sensitivity Step 7 of 11

Begin Updating Parameters
Thu May 22, 1997   00:54:51

Parameters:
   shell                     1.55

End Updating Parameters
Thu May 22, 1997   01:05:24

Begin Analysis: "initial_static"
Thu May 22, 1997   01:06:02

Begin Mass Calculation
Thu May 22, 1997   01:06:59

Begin P-Loop Pass 1
Thu May 22, 1997   01:08:03

Begin Processing Multi-Point Constraints
Thu May 22, 1997   01:08:10

Begin Matrix Profile Minimization
Thu May 22, 1997   01:08:10

Begin Element Calculations, Pass 1
Thu May 22, 1997   01:08:10

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   01:15:57

Begin Equation Solve, Pass 1
Thu May 22, 1997   01:15:57

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Thu May 22, 1997   01:20:36

Begin Displacement and Stress Calculation
Thu May 22, 1997   01:23:14

Begin Convergence Check Pass 1
Thu May 22, 1997   01:24:30

Completed P-Loop
Thu May 22, 1997   01:24:51

Completed Analysis: initial_static
Thu May 22, 1997   01:24:51

Completed Sensitivity Step 8 of 11

Begin Updating Parameters
Thu May 22, 1997   01:24:52

Parameters:
   shell                      1.7

End Updating Parameters
Thu May 22, 1997   01:37:35

Begin Analysis: "initial_static"
Thu May 22, 1997   01:38:57

Begin Mass Calculation
Thu May 22, 1997   01:41:21

Begin P-Loop Pass 1
Thu May 22, 1997   01:43:41

Begin Processing Multi-Point Constraints
Thu May 22, 1997   01:43:43

Begin Matrix Profile Minimization
Thu May 22, 1997   01:43:43

Begin Element Calculations, Pass 1
Thu May 22, 1997   01:43:43

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   01:53:02

Begin Equation Solve, Pass 1
Thu May 22, 1997   01:53:02

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Thu May 22, 1997   01:56:04

Begin Displacement and Stress Calculation
Thu May 22, 1997   01:59:12

Begin Convergence Check Pass 1
Thu May 22, 1997   02:01:37

Completed P-Loop
Thu May 22, 1997   02:01:58

Completed Analysis: initial_static
Thu May 22, 1997   02:01:58

Completed Sensitivity Step 9 of 11

Begin Updating Parameters
Thu May 22, 1997   02:01:59

Parameters:
   shell                     1.85

End Updating Parameters
Thu May 22, 1997   02:14:30

Begin Analysis: "initial_static"
Thu May 22, 1997   02:15:45

Begin Mass Calculation
Thu May 22, 1997   02:18:20

Begin P-Loop Pass 1
Thu May 22, 1997   02:20:52

Begin Processing Multi-Point Constraints
Thu May 22, 1997   02:20:53

Begin Matrix Profile Minimization
Thu May 22, 1997   02:20:53

Begin Element Calculations, Pass 1
Thu May 22, 1997   02:20:54

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   02:30:30

Begin Equation Solve, Pass 1
Thu May 22, 1997   02:30:30

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Thu May 22, 1997   02:36:22

Begin Displacement and Stress Calculation
Thu May 22, 1997   02:39:06

Begin Convergence Check Pass 1
Thu May 22, 1997   02:41:01

Completed P-Loop
Thu May 22, 1997   02:41:26

Completed Analysis: initial_static
Thu May 22, 1997   02:41:27

Completed Sensitivity Step 10 of 11

Begin Updating Parameters
Thu May 22, 1997   02:41:27

Parameters:
   shell                        2

End Updating Parameters
Thu May 22, 1997   02:50:48

Begin Analysis: "initial_static"
Thu May 22, 1997   02:51:37

Begin Mass Calculation
Thu May 22, 1997   02:53:10

Begin P-Loop Pass 1
Thu May 22, 1997   02:54:24

Begin Processing Multi-Point Constraints
Thu May 22, 1997   02:54:29

Begin Matrix Profile Minimization
Thu May 22, 1997   02:54:29

Begin Element Calculations, Pass 1
Thu May 22, 1997   02:54:29

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   02:59:42

Begin Equation Solve, Pass 1
Thu May 22, 1997   02:59:42

Number of equations: 14923
Average bandwidth:   220.378
Maximum bandwidth:   654
Size of global matrix profile (mb): 26.3096
Number of terms in global matrix profile: 3288705     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 21.09
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 174.297

Begin Load Calculations
Thu May 22, 1997   03:03:40

Begin Displacement and Stress Calculation
Thu May 22, 1997   03:06:05

Begin Convergence Check Pass 1
Thu May 22, 1997   03:07:21

Completed P-Loop
Thu May 22, 1997   03:07:39

Completed Analysis: initial_static
Thu May 22, 1997   03:07:39

Completed Sensitivity Step 11 of 11

Completed Global Sensitivity Study
