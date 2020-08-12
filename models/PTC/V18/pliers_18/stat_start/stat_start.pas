------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(28)
Diagnostic Log
Fri May  9, 1997   22:51:13
------------------------------------------------------------

Begin Analysis: "stat_start"
Fri May  9, 1997   22:53:11

Using Sparse Solver

Begin Mass Calculation
Fri May  9, 1997   22:53:22

Begin P-Loop Pass 1
Fri May  9, 1997   22:53:28

Begin Processing Multi-Point Constraints
Fri May  9, 1997   22:53:32

Begin Matrix Profile Minimization
Fri May  9, 1997   22:53:32

Begin Element Calculations, Pass 1
Fri May  9, 1997   22:53:32

Begin Global Matrix Assembly, Pass 1
Fri May  9, 1997   22:53:38

Begin Equation Solve, Pass 1
Fri May  9, 1997   22:53:38

Number of equations: 17334
Average bandwidth:   223.296
Maximum bandwidth:   666
Size of global matrix profile (mb): 30.965
Number of terms in global matrix profile: 3870621     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 14.8303
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
Fri May  9, 1997   22:54:00

Begin Displacement and Stress Calculation
Fri May  9, 1997   22:54:09

Begin P-Loop Pass 2
Fri May  9, 1997   22:55:13

Begin Processing Multi-Point Constraints
Fri May  9, 1997   22:55:16

Begin Matrix Profile Minimization
Fri May  9, 1997   22:55:16

Begin Element Calculations, Pass 2
Fri May  9, 1997   22:55:17

Begin Global Matrix Assembly, Pass 2
Fri May  9, 1997   22:55:21

Begin Equation Solve, Pass 2
Fri May  9, 1997   22:55:21

Number of equations: 21288
Average bandwidth:   224.126
Maximum bandwidth:   651
Size of global matrix profile (mb): 38.1696
Number of terms in global matrix profile: 4771200     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 19.9997
Maximum element matrix size (kb): 113.568
Average element matrix size (kb): 19.7431

Begin Load Calculations
Fri May  9, 1997   22:55:47

Begin Displacement and Stress Calculation
Fri May  9, 1997   22:55:58

Completed P-Loop
Fri May  9, 1997   22:57:10

Completed Analysis: stat_start
Fri May  9, 1997   22:57:10
