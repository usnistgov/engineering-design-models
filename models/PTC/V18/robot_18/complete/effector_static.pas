------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 17.0(40)
Diagnostic Log
Fri Oct 11, 1996   08:28:02
------------------------------------------------------------

Begin Analysis: "effector_static"
Fri Oct 11, 1996   08:28:07

Using Sparse Solver

Begin Mass Calculation
Fri Oct 11, 1996   08:28:07

Begin P-Loop Pass 1
Fri Oct 11, 1996   08:28:07

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:28:07

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:28:07

Begin Element Calculations, Pass 1
Fri Oct 11, 1996   08:28:08

Begin Global Matrix Assembly, Pass 1
Fri Oct 11, 1996   08:28:08

Begin Equation Solve, Pass 1
Fri Oct 11, 1996   08:28:08

Number of equations: 45
Average bandwidth:   11
Maximum bandwidth:   15
Size of global matrix profile (kb): 3.96
Number of terms in global matrix profile: 495         
Minimum recommended solram for direct solver: 2

Size of element file (kb): 14.976
Maximum element matrix size (bytes): 624
Average element matrix size (bytes): 624

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
Fri Oct 11, 1996   08:28:10

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:28:10

Begin Reaction Calculation
Fri Oct 11, 1996   08:28:11

Begin Convergence Check Pass 1
Fri Oct 11, 1996   08:28:11

Begin P-Loop Pass 2
Fri Oct 11, 1996   08:28:11

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:28:11

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:28:11

Begin Element Calculations, Pass 2
Fri Oct 11, 1996   08:28:11

Begin Global Matrix Assembly, Pass 2
Fri Oct 11, 1996   08:28:11

Begin Equation Solve, Pass 2
Fri Oct 11, 1996   08:28:11

Number of equations: 207
Average bandwidth:   29
Maximum bandwidth:   45
Size of global matrix profile (kb): 48.024
Number of terms in global matrix profile: 6003        
Minimum recommended solram for direct solver: 2

Size of element file (kb): 89.28
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Load Calculations
Fri Oct 11, 1996   08:28:12

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:28:12

Begin Reaction Calculation
Fri Oct 11, 1996   08:28:12

Begin Convergence Check Pass 2
Fri Oct 11, 1996   08:28:13

Begin P-Loop Pass 3
Fri Oct 11, 1996   08:28:13

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:28:13

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:28:13

Begin Element Calculations, Pass 3
Fri Oct 11, 1996   08:28:13

Begin Global Matrix Assembly, Pass 3
Fri Oct 11, 1996   08:28:13

Begin Equation Solve, Pass 3
Fri Oct 11, 1996   08:28:13

Number of equations: 558
Average bandwidth:   54.5161
Maximum bandwidth:   84
Size of global matrix profile (kb): 243.36
Number of terms in global matrix profile: 30420       
Minimum recommended solram for direct solver: 2

Size of element file (kb): 351.36
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

Begin Load Calculations
Fri Oct 11, 1996   08:28:13

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:28:14

Begin Reaction Calculation
Fri Oct 11, 1996   08:28:15

Begin Convergence Check Pass 3
Fri Oct 11, 1996   08:28:15

Begin P-Loop Pass 4
Fri Oct 11, 1996   08:28:15

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:28:15

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:28:15

Begin Element Calculations, Pass 4
Fri Oct 11, 1996   08:28:15

Begin Global Matrix Assembly, Pass 4
Fri Oct 11, 1996   08:28:16

Begin Equation Solve, Pass 4
Fri Oct 11, 1996   08:28:16

Number of equations: 1170
Average bandwidth:   89.4692
Maximum bandwidth:   135
Size of global matrix profile (kb): 837.432
Number of terms in global matrix profile: 104679      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 1.06848
Maximum element matrix size (kb): 44.52
Average element matrix size (kb): 44.52

Begin Load Calculations
Fri Oct 11, 1996   08:28:17

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:28:18

Begin Reaction Calculation
Fri Oct 11, 1996   08:28:19

Begin Convergence Check Pass 4
Fri Oct 11, 1996   08:28:20

Begin P-Loop Pass 5
Fri Oct 11, 1996   08:28:20

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:28:20

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:28:20

Begin Element Calculations, Pass 5
Fri Oct 11, 1996   08:28:20

Begin Global Matrix Assembly, Pass 5
Fri Oct 11, 1996   08:28:24

Begin Equation Solve, Pass 5
Fri Oct 11, 1996   08:28:24

Number of equations: 2112
Average bandwidth:   135.259
Maximum bandwidth:   198
Size of global matrix profile (mb): 2.28533
Number of terms in global matrix profile: 285666      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.72162
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 113.401

Begin Load Calculations
Fri Oct 11, 1996   08:28:26

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:28:27

Begin Reaction Calculation
Fri Oct 11, 1996   08:28:31

Begin Convergence Check Pass 5
Fri Oct 11, 1996   08:28:31

Begin P-Loop Pass 6
Fri Oct 11, 1996   08:28:32

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:28:32

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:28:32

Begin Element Calculations, Pass 6
Fri Oct 11, 1996   08:28:32

Begin Global Matrix Assembly, Pass 6
Fri Oct 11, 1996   08:28:44

Begin Equation Solve, Pass 6
Fri Oct 11, 1996   08:28:44

Number of equations: 3387
Average bandwidth:   191.36
Maximum bandwidth:   270
Size of global matrix profile (mb): 5.1851
Number of terms in global matrix profile: 648138      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 5.85319
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 243.883

Begin Load Calculations
Fri Oct 11, 1996   08:28:52

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:28:54

Begin Reaction Calculation
Fri Oct 11, 1996   08:29:04

Begin Convergence Check Pass 6
Fri Oct 11, 1996   08:29:06

Completed P-Loop
Fri Oct 11, 1996   08:29:15

Completed Analysis: effector_static
Fri Oct 11, 1996   08:29:16
