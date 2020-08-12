#
#    awk file to strip orbit cards from spin.tmg and copy it
#    to INPF. We will then use the buildf utility to merge INPF
#    with new orbit cards.
#
#--------------------------------------------------------------------
NR <  3 { print $0 }
NR == 3 {m = $1; n = $2; mesh = $3; rk = $4; ist = $5; ksp = $6; \
         sigma = $7; psun = $8; ia = $9; tlin = $10; pir = $11;  \
         print "255","513",mesh,rk,ist,ksp,sigma,psun,ia,tlin,pir}
NR > 4 && substr($1,1,3) != "ORB" { print $0 }
#substr($1,1,3) != "ORB" && NR != 4 { print $0 }
