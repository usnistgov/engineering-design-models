------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(28)
Diagnostic Log
Thu Apr 17, 1997   11:36:11
------------------------------------------------------------

Begin Updating Parameters
Thu Apr 17, 1997   11:36:25

Parameters:
   top_hole_dia                 2

End Updating Parameters
Thu Apr 17, 1997   11:36:57

Begin Analysis: "stat"
Thu Apr 17, 1997   11:37:02

Using Sparse Solver

Begin Mass Calculation
Thu Apr 17, 1997   11:37:08

Begin P-Loop Pass 1
Thu Apr 17, 1997   11:37:15

Begin Processing Multi-Point Constraints
Thu Apr 17, 1997   11:37:16

Begin Matrix Profile Minimization
Thu Apr 17, 1997   11:37:16

Begin Element Calculations, Pass 1
Thu Apr 17, 1997   11:37:17

Begin Global Matrix Assembly, Pass 1
Thu Apr 17, 1997   11:37:20

Begin Equation Solve, Pass 1
Thu Apr 17, 1997   11:37:20

Number of equations: 11313
Average bandwidth:   213.64
Maximum bandwidth:   582
Size of global matrix profile (mb): 19.3353
Number of terms in global matrix profile: 2416914     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 9.42816
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

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
Thu Apr 17, 1997   11:37:33

Begin Displacement and Stress Calculation
Thu Apr 17, 1997   11:37:41

Begin P-Loop Pass 2
Thu Apr 17, 1997   11:38:23

Begin Processing Multi-Point Constraints
Thu Apr 17, 1997   11:38:24

Begin Matrix Profile Minimization
Thu Apr 17, 1997   11:38:24

Begin Element Calculations, Pass 2
Thu Apr 17, 1997   11:38:24

Begin Global Matrix Assembly, Pass 2
Thu Apr 17, 1997   11:38:28

Begin Equation Solve, Pass 2
Thu Apr 17, 1997   11:38:28

Number of equations: 15636
Average bandwidth:   220.784
Maximum bandwidth:   657
Size of global matrix profile (mb): 27.6174
Number of terms in global matrix profile: 3452178     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 15.1605
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 23.5411

Begin Load Calculations
Thu Apr 17, 1997   11:38:45

Begin Displacement and Stress Calculation
Thu Apr 17, 1997   11:38:54

Completed P-Loop
Thu Apr 17, 1997   11:39:43

Completed Analysis: stat
Thu Apr 17, 1997   11:39:43

Completed Sensitivity Step 1 of 6

Begin Updating Parameters
Thu Apr 17, 1997   11:39:43

Parameters:
   top_hole_dia               2.4

End Updating Parameters
Thu Apr 17, 1997   11:40:21

Begin Analysis: "stat"
Thu Apr 17, 1997   11:40:28

Begin Mass Calculation
Thu Apr 17, 1997   11:40:34

Begin P-Loop Pass 1
Thu Apr 17, 1997   11:40:42

Begin Processing Multi-Point Constraints
Thu Apr 17, 1997   11:40:43

Begin Matrix Profile Minimization
Thu Apr 17, 1997   11:40:43

Begin Element Calculations, Pass 1
Thu Apr 17, 1997   11:40:43

Begin Global Matrix Assembly, Pass 1
Thu Apr 17, 1997   11:40:47

Begin Equation Solve, Pass 1
Thu Apr 17, 1997   11:40:47

Number of equations: 15636
Average bandwidth:   220.784
Maximum bandwidth:   657
Size of global matrix profile (mb): 27.6174
Number of terms in global matrix profile: 3452178     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 15.1605
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 23.5411

Begin Load Calculations
Thu Apr 17, 1997   11:41:04

Begin Displacement and Stress Calculation
Thu Apr 17, 1997   11:41:13

Begin Convergence Check Pass 1
Thu Apr 17, 1997   11:41:34

Completed P-Loop
Thu Apr 17, 1997   11:41:36

Completed Analysis: stat
Thu Apr 17, 1997   11:41:36

Completed Sensitivity Step 2 of 6

Begin Updating Parameters
Thu Apr 17, 1997   11:41:37

Parameters:
   top_hole_dia               2.8

End Updating Parameters
Thu Apr 17, 1997   11:42:03

Begin Analysis: "stat"
Thu Apr 17, 1997   11:42:11

Begin Mass Calculation
Thu Apr 17, 1997   11:42:17

Begin P-Loop Pass 1
Thu Apr 17, 1997   11:42:24

Begin Processing Multi-Point Constraints
Thu Apr 17, 1997   11:42:26

Begin Matrix Profile Minimization
Thu Apr 17, 1997   11:42:26

Begin Element Calculations, Pass 1
Thu Apr 17, 1997   11:42:26

Begin Global Matrix Assembly, Pass 1
Thu Apr 17, 1997   11:42:29

Begin Equation Solve, Pass 1
Thu Apr 17, 1997   11:42:29

Number of equations: 15636
Average bandwidth:   220.784
Maximum bandwidth:   657
Size of global matrix profile (mb): 27.6174
Number of terms in global matrix profile: 3452178     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 15.1605
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 23.5411

Begin Load Calculations
Thu Apr 17, 1997   11:42:47

Begin Displacement and Stress Calculation
Thu Apr 17, 1997   11:42:56

Begin Convergence Check Pass 1
Thu Apr 17, 1997   11:43:16

Completed P-Loop
Thu Apr 17, 1997   11:43:18

Completed Analysis: stat
Thu Apr 17, 1997   11:43:18

Completed Sensitivity Step 3 of 6

Begin Updating Parameters
Thu Apr 17, 1997   11:43:18

Parameters:
   top_hole_dia               3.2

End Updating Parameters
Thu Apr 17, 1997   11:43:57

Begin Analysis: "stat"
Thu Apr 17, 1997   11:44:06

Begin Mass Calculation
Thu Apr 17, 1997   11:44:14

Begin P-Loop Pass 1
Thu Apr 17, 1997   11:44:25

Begin Processing Multi-Point Constraints
Thu Apr 17, 1997   11:44:27

Begin Matrix Profile Minimization
Thu Apr 17, 1997   11:44:27

Begin Element Calculations, Pass 1
Thu Apr 17, 1997   11:44:27

Begin Global Matrix Assembly, Pass 1
Thu Apr 17, 1997   11:44:31

Begin Equation Solve, Pass 1
Thu Apr 17, 1997   11:44:31

Number of equations: 15636
Average bandwidth:   220.784
Maximum bandwidth:   657
Size of global matrix profile (mb): 27.6174
Number of terms in global matrix profile: 3452178     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 15.1605
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 23.5411

Begin Load Calculations
Thu Apr 17, 1997   11:44:50

Begin Displacement and Stress Calculation
Thu Apr 17, 1997   11:45:00

Begin Convergence Check Pass 1
Thu Apr 17, 1997   11:45:26

Completed P-Loop
Thu Apr 17, 1997   11:45:28

Completed Analysis: stat
Thu Apr 17, 1997   11:45:28

Completed Sensitivity Step 4 of 6

Begin Updating Parameters
Thu Apr 17, 1997   11:05:28

Parameters:
   top_hole_dia               3.6

End Updating Parameters
Thu Apr 17, 1997   11:46:11

Begin Analysis: "stat"
Thu Apr 17, 1997   11:46:19

Begin Mass Calculation
Thu Apr 17, 1997   11:46:27

Begin P-Loop Pass 1
Thu Apr 17, 1997   11:46:35

Begin Processing Multi-Point Constraints
Thu Apr 17, 1997   11:46:36

Begin Matrix Profile Minimization
Thu Apr 17, 1997   11:46:36

Begin Element Calculations, Pass 1
Thu Apr 17, 1997   11:46:36

Begin Global Matrix Assembly, Pass 1
Thu Apr 17, 1997   11:46:40

Begin Equation Solve, Pass 1
Thu Apr 17, 1997   11:46:40

Number of equations: 15636
Average bandwidth:   220.784
Maximum bandwidth:   657
Size of global matrix profile (mb): 27.6174
Number of terms in global matrix profile: 3452178     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 15.1605
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 23.5411

Begin Load Calculations
Thu Apr 17, 1997   11:46:56

Begin Displacement and Stress Calculation
Thu Apr 17, 1997   11:47:06

Begin Convergence Check Pass 1
Thu Apr 17, 1997   11:47:27

Completed P-Loop
Fri Apr 18, 1997   11:50:01

Completed Analysis: stat
Fri Apr 18, 1997   11:50:01

Completed Sensitivity Step 5 of 6

Begin Updating Parameters
Fri Apr 18, 1997   11:50:01

Parameters:
   top_hole_dia                 4

End Updating Parameters
Fri Apr 18, 1997   11:50:40

Begin Analysis: "stat"
Fri Apr 18, 1997   11:50:46

Begin Mass Calculation
Fri Apr 18, 1997   11:50:52

Begin P-Loop Pass 1
Fri Apr 18, 1997   11:51:00

Begin Processing Multi-Point Constraints
Fri Apr 18, 1997   11:51:01

Begin Matrix Profile Minimization
Fri Apr 18, 1997   11:51:01

Begin Element Calculations, Pass 1
Fri Apr 18, 1997   11:51:01

Begin Global Matrix Assembly, Pass 1
Fri Apr 18, 1997   11:51:05

Begin Equation Solve, Pass 1
Fri Apr 18, 1997   11:51:05

Number of equations: 15636
Average bandwidth:   220.784
Maximum bandwidth:   657
Size of global matrix profile (mb): 27.6174
Number of terms in global matrix profile: 3452178     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 15.1605
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 23.5411

Begin Load Calculations
Fri Apr 18, 1997   11:51:22

Begin Displacement and Stress Calculation
Fri Apr 18, 1997   11:51:31

Begin Convergence Check Pass 1
Fri Apr 18, 1997   11:51:52

Completed P-Loop
Fri Apr 18, 1997   11:51:54

Completed Analysis: stat
Fri Apr 18, 1997   11:51:54

Completed Sensitivity Step 6 of 6

Completed Global Sensitivity Study
