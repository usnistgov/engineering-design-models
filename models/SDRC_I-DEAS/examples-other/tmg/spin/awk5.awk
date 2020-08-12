#
#    Modifies the card 2 M parameter to be 0 and remove Card 2b
#
#---------------------------------------------------------------------
NR <  3 { print $0 }
NR == 3 {m = $1; n = $2; mesh = $3; rk = $4; ist = $5; ksp = $6; \
         sigma = $7; psun = $8; ia = $9; tlin = $10; pir = $11;  \
         print "256","512",mesh,rk,ist,ksp,sigma,psun,ia,tlin,pir}
NR > 3 { print $0 }
