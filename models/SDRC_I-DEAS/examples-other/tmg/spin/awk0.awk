#
#
#    Scan TMG file looking for Orbit cards and write card. Extract period
#    and write as next line.
#   
#    Also write any orbadd cards.
#
$1 == "ORBNALL" { print; print $11; print $7 }
$1 == "ORBSALL" { print; print $11; print $7 }
$1 == "ORBS1"   { print; print $11; print $7 }
$1 == "ORBN1"   { print; print $11; print $7 }
$1 == "ORBADD" { print }
#
#    From TMGMSGF.dat extract orbit position time entries
#
$1 == "T=" { print }
$8 == "PERIAPSIS=" { print $5,substr($9,1,(length($9)-1)) }
$1 == "NO"   { print "-1.0E35 0.0"; print "-1.0E35 0.0" }
