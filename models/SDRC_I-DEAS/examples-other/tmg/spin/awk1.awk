#
#      Orbit card builder.
#      -------------------
#    
#       This routine processes the file orbpos and uses the data
#       to build orbit cards for a spinning spacecraft.
#       
#       It uses the original orbit cards plus the orbit calculation
#       point data from the TMG message file to construct an orbit
#       card for each orbit calculation point.
#
#       Each orbit calculation point is defined with the original orbit
#       card and an ORBADD card that causes it to spin once over a 0.1
#       degree orbit interval.
#
#       The assumed structure of orbpos is:
#       Line 1: Line containing spin data
#       Line 2: Original orbit card
#       Line 3: Original ORBADD card that defines a full orbit with
#               initial rotations plus a single spin during that orbit.
#
#       Pad with '-1''s to make INPF format.
#--------------------------------------------------------------------
#
BEGIN { print "-1"; print "-1"; print "-1"; print "-1"; print "-1"}
#
#    Line 1 contains number of calc points in spin. To remove 
#    additional calculation point that TMG adds decrement value.
#
NR == 1  {nspin = $2 - 1}
#
#   Copy orbit card to variables
#
NR == 2 { orbdef = $1; orient = $2; albedo = $3; \
           nint = $4; decl=$5; incl = $6; e = $7; smar = $8; \
           omega = $9; perang = $10; period= $11; n1=$12 }
#
#    Extract ORBADD parameters. Multiply all rotation rates by 3600 to convert
#    1 spin per orbit to 1 spin per .1 degrees. Only one rotation rate should
#    be non zero.
#
$1 == "ORBADD" { xrot = $5; yrot = $6; zrot = $7; order = $8; \
                 dangx = $9; \
                 dangy = $10; \
                 dangz = $11 } 
$1 == "orbpos" { xrate = dangx * $6; \
                 yrate = dangy * $6; \
                 zrate = dangz * $6; \
                 print orbdef, orient, albedo, nspin, decl, incl, e, \
                       smar, omega, perang, period, n1; \
                 print "ORBADD ", $4, $5, $2, \
                       xrot, yrot, zrot , order, xrate, yrate, zrate }
END   { print "-1"; print "-1"; print "-1"; print "-1"; print "-1"}

