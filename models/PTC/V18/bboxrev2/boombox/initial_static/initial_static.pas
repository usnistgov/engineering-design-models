------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(50)
Diagnostic Log
Thu May 22, 1997   11:39:55
------------------------------------------------------------

Begin Analysis: "initial_static"
Thu May 22, 1997   11:40:38

Using Sparse Solver

Begin Mass Calculation
Thu May 22, 1997   11:40:46

Begin P-Loop Pass 1
Thu May 22, 1997   11:40:55

Begin Processing Multi-Point Constraints
Thu May 22, 1997   11:40:55

Begin Matrix Profile Minimization
Thu May 22, 1997   11:40:55

Begin Element Calculations, Pass 1
Thu May 22, 1997   11:40:55

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   11:41:00

Begin Equation Solve, Pass 1
Thu May 22, 1997   11:41:00

Number of equations: 3341
Average bandwidth:   108.028
Maximum bandwidth:   258
Size of global matrix profile (mb): 2.88736
Number of terms in global matrix profile: 360920      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.12818
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.1627

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
Thu May 22, 1997   11:41:06

Begin Displacement and Stress Calculation
Thu May 22, 1997   11:41:13

Begin Reaction Calculation
Thu May 22, 1997   11:41:22

Begin P-Loop Pass 2
Thu May 22, 1997   11:41:37

Begin Processing Multi-Point Constraints
Thu May 22, 1997   11:41:37

Begin Matrix Profile Minimization
Thu May 22, 1997   11:41:37

Begin Element Calculations, Pass 2
Thu May 22, 1997   11:41:37

Begin Global Matrix Assembly, Pass 2
Thu May 22, 1997   11:42:46

Begin Equation Solve, Pass 2
Thu May 22, 1997   11:42:46

Number of equations: 17594
Average bandwidth:   221.717
Maximum bandwidth:   588
Size of global matrix profile (mb): 31.2071
Number of terms in global matrix profile: 3900888     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 26.2575
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 211.754

Begin Load Calculations
Thu May 22, 1997   11:43:36

Begin Displacement and Stress Calculation
Thu May 22, 1997   11:43:49

Begin Reaction Calculation
Thu May 22, 1997   11:43:58

Completed P-Loop
Thu May 22, 1997   11:44:33

Completed Analysis: initial_static
Thu May 22, 1997   11:44:33
