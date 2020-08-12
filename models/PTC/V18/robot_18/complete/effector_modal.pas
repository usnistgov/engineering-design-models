------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 17.0(40)
Diagnostic Log
Fri Oct 11, 1996   08:30:32
------------------------------------------------------------

Begin Analysis: "effector_modal"
Fri Oct 11, 1996   08:30:36

Using Sparse Solver

Begin Mass Calculation
Fri Oct 11, 1996   08:30:36

Begin P-Loop Pass 1
Fri Oct 11, 1996   08:30:36

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:30:36

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:30:36

Begin Element Calculations, Pass 1
Fri Oct 11, 1996   08:30:36

Begin Equation Solve, Pass 1
Fri Oct 11, 1996   08:30:37

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

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:30:38

Begin Reaction Calculation
Fri Oct 11, 1996   08:30:39

Begin Convergence Check Pass 1
Fri Oct 11, 1996   08:30:40

Begin P-Loop Pass 2
Fri Oct 11, 1996   08:30:40

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:30:40

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:30:40

Begin Element Calculations, Pass 2
Fri Oct 11, 1996   08:30:40

Begin Equation Solve, Pass 2
Fri Oct 11, 1996   08:30:40

Number of equations: 207
Average bandwidth:   29
Maximum bandwidth:   45
Size of global matrix profile (kb): 48.024
Number of terms in global matrix profile: 6003        
Minimum recommended solram for direct solver: 2

Size of element file (kb): 89.28
Maximum element matrix size (kb): 3.72
Average element matrix size (kb): 3.72

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:30:41

Begin Reaction Calculation
Fri Oct 11, 1996   08:30:43

Begin Convergence Check Pass 2
Fri Oct 11, 1996   08:30:43

Begin P-Loop Pass 3
Fri Oct 11, 1996   08:30:43

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:30:43

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:30:43

Begin Element Calculations, Pass 3
Fri Oct 11, 1996   08:30:43

Begin Equation Solve, Pass 3
Fri Oct 11, 1996   08:30:44

Number of equations: 657
Average bandwidth:   58
Maximum bandwidth:   84
Size of global matrix profile (kb): 304.848
Number of terms in global matrix profile: 38106       
Minimum recommended solram for direct solver: 2

Size of element file (kb): 431.424
Maximum element matrix size (kb): 24.648
Average element matrix size (kb): 17.976

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:30:45

Begin Reaction Calculation
Fri Oct 11, 1996   08:30:48

Begin Convergence Check Pass 3
Fri Oct 11, 1996   08:30:48

Begin P-Loop Pass 4
Fri Oct 11, 1996   08:30:49

Begin Processing Multi-Point Constraints
Fri Oct 11, 1996   08:30:49

Begin Matrix Profile Minimization
Fri Oct 11, 1996   08:30:49

Begin Element Calculations, Pass 4
Fri Oct 11, 1996   08:30:49

Begin Equation Solve, Pass 4
Fri Oct 11, 1996   08:30:52

Number of equations: 1350
Average bandwidth:   95.2067
Maximum bandwidth:   135
Size of global matrix profile (mb): 1.02823
Number of terms in global matrix profile: 128529      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 1.29984
Maximum element matrix size (kb): 73.44
Average element matrix size (kb): 54.16

Begin Displacement and Stress Calculation
Fri Oct 11, 1996   08:30:55

Begin Reaction Calculation
Fri Oct 11, 1996   08:30:59

Begin Convergence Check Pass 4
Fri Oct 11, 1996   08:31:00

Completed P-Loop
Fri Oct 11, 1996   08:31:08

Completed Analysis: effector_modal
Fri Oct 11, 1996   08:31:08
