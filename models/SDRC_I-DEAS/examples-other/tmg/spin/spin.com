#! /bin/sh
#
#           TMG Spin Utility
#              Version 2.0
#
# performs analysis on spinning spacecraft
#
#    Move INPF to spin.tmg then copy it back changing the 255 on Card 2a to
#    a 0.  Then run tmg to create orbit point list in INPF
#
#    Purge TMG files
#
tmg pu
#
mv INPF spin.tmg
awk -f /tmg/spin/awk4 spin.tmg > INPF
tmg ti
#
#    copy orbit cards to a storage file 
#
awk -f /tmg/spin/awk0 spin.tmg  TMGMSGF.dat > orbpos
#
/tmg/spin/orbtim
#   Now build orbit cards for spinning orbit using awk.
#
awk -f /tmg/spin/awk1 orbtemp > orbcards
#
#    Copy spin.tmg to INPF with no orbit cards.
#
awk -f /tmg/spin/awk2 spin.tmg > INPF
/tmg/sdrc/buildf.exe >> idetmg.log << +
init
INPF
orbcards
done
+
#
#       Purge files and run newly created INPF
#
tmg pu
tmg ti
#
#        Move MODLCF to modlcf and then run spinsum to combine
#        heat loads to create new MODLCF.
#
mv MODLCF modlcf
/tmg/spin/spinsum
#
#  Now build an input file that will perform a restart using M=256.
#  This time include card 2b
#
awk -f /tmg/spin/awk5 spin.tmg > INPF
#


