------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(50)
Diagnostic Log
Thu May 22, 1997   15:57:36
------------------------------------------------------------

Begin Analysis: "final_static_run"
Thu May 22, 1997   15:59:22

Using Sparse Solver

Begin Mass Calculation
Thu May 22, 1997   15:59:40

Begin P-Loop Pass 1
Thu May 22, 1997   15:59:58

Begin Processing Multi-Point Constraints
Thu May 22, 1997   15:59:58

Begin Matrix Profile Minimization
Thu May 22, 1997   15:59:58

Begin Element Calculations, Pass 1
Thu May 22, 1997   15:59:58

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   16:00:07

Begin Equation Solve, Pass 1
Thu May 22, 1997   16:00:07

Number of equations: 3899
Average bandwidth:   119.89
Maximum bandwidth:   360
Size of global matrix profile (mb): 3.73962
Number of terms in global matrix profile: 467453      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.42098
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 16.8123

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
Thu May 22, 1997   16:00:24

Begin Displacement and Stress Calculation
Thu May 22, 1997   16:00:55

Begin Reaction Calculation
Thu May 22, 1997   16:01:12

Begin P-Loop Pass 2
Thu May 22, 1997   16:02:00

Begin Processing Multi-Point Constraints
Thu May 22, 1997   16:02:01

Begin Matrix Profile Minimization
Thu May 22, 1997   16:02:01

Begin Element Calculations, Pass 2
Thu May 22, 1997   16:02:01

Begin Global Matrix Assembly, Pass 2
Thu May 22, 1997   16:05:09

Begin Equation Solve, Pass 2
Thu May 22, 1997   16:05:09

Number of equations: 27965
Average bandwidth:   261.963
Maximum bandwidth:   924
Size of global matrix profile (mb): 58.6064
Number of terms in global matrix profile: 7325798     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 47.4596
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 329.581

Begin Load Calculations
Thu May 22, 1997   16:07:24

Begin Displacement and Stress Calculation
Thu May 22, 1997   16:08:45

Begin Reaction Calculation
Thu May 22, 1997   16:09:01

Completed P-Loop
Thu May 22, 1997   16:10:54

Completed Analysis: final_static_run
Thu May 22, 1997   16:10:54
