TMG Spin Utility Version 2.0 
============================

The Spin utility allows TMG to calculate the orbital heat loads
on spinning spacecraft.

For more details see the documentation in spin.ps.

List of files:

awk0 - awk5
-----------

awk scripts used to process orbit data. See comments in files.

cube.unv
--------

An I-DEAS universal file with a simple cude FE model. It is suggested that 
all spin orbits be tested with this model before use with a large model.

orbtim.f
--------

Fortran source for orbtim.

spin
----

The script that drives the whole process

spin.ps
-------

Doucumentation in Postscript format.

spinnum
-------

A sample spin data file. See documentation

spinsum.f
---------

Fortran source for spinsum


