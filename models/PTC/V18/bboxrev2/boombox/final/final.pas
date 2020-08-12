------------------------------------------------------------
Pro/MECHANICA STRUCTURE Version 18.0(50)
Diagnostic Log
Thu May 22, 1997   09:13:55
------------------------------------------------------------

Begin Analysis: "final"
Thu May 22, 1997   09:14:45

Using Sparse Solver

Begin Mass Calculation
Thu May 22, 1997   09:14:54

Begin P-Loop Pass 1
Thu May 22, 1997   09:15:04

Begin Processing Multi-Point Constraints
Thu May 22, 1997   09:15:04

Begin Matrix Profile Minimization
Thu May 22, 1997   09:15:04

Begin Element Calculations, Pass 1
Thu May 22, 1997   09:15:04

Begin Global Matrix Assembly, Pass 1
Thu May 22, 1997   09:15:10

Begin Equation Solve, Pass 1
Thu May 22, 1997   09:15:10

Number of equations: 3587
Average bandwidth:   111.671
Maximum bandwidth:   276
Size of global matrix profile (mb): 3.20452
Number of terms in global matrix profile: 400565      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 2.30011
Maximum element matrix size (kb): 21.024
Average element matrix size (kb): 17.165

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
Thu May 22, 1997   09:15:15

Begin Displacement and Stress Calculation
Thu May 22, 1997   09:15:27

Begin Reaction Calculation
Thu May 22, 1997   09:15:36

Begin P-Loop Pass 2
Thu May 22, 1997   09:15:56

Begin Processing Multi-Point Constraints
Thu May 22, 1997   09:15:57

Begin Matrix Profile Minimization
Thu May 22, 1997   09:15:57

Begin Element Calculations, Pass 2
Thu May 22, 1997   09:15:57

Begin Global Matrix Assembly, Pass 2
Thu May 22, 1997   09:17:44

Begin Equation Solve, Pass 2
Thu May 22, 1997   09:17:44

Number of equations: 25067
Average bandwidth:   255.588
Maximum bandwidth:   738
Size of global matrix profile (mb): 51.2546
Number of terms in global matrix profile: 6406823     
Minimum recommended solram for direct solver: 2

Size of element file (mb): 43.9173
Maximum element matrix size (kb): 469.224
Average element matrix size (kb): 327.741

Begin Load Calculations
Thu May 22, 1997   09:18:52

Begin Displacement and Stress Calculation
Thu May 22, 1997   09:19:17

Begin Reaction Calculation
Thu May 22, 1997   09:19:27

Completed P-Loop
Thu May 22, 1997   09:20:21

Completed Analysis: final
Thu May 22, 1997   09:20:21
