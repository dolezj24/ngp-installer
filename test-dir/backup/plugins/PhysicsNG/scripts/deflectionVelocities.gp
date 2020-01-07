#!/gnuplot
load 'rbr.gp'

set zeroaxis
set grid xtics
set grid ytics
set xlabel "step [-]"
set ylabel "deflection velocity [m/s]"
set key on top right

set title sprintf("data file '%s'", file) noenhanced

plot \
     shaftName = 'LF' \
     file using 1:(deflectionVelocity(sprintf("%s", shaftName))) \
     title sprintf("defl velo %s", shaftName) with lines, \
     shaftName = 'RF' \
     file using 1:(deflectionVelocity(sprintf("%s", shaftName))) \
     title sprintf("defl velo %s", shaftName) with lines, \
     shaftName = 'LB' \
     file using 1:(deflectionVelocity(sprintf("%s", shaftName))) \
     title sprintf("defl velo %s", shaftName) with lines, \
     shaftName = 'RB' \
     file using 1:(deflectionVelocity(sprintf("%s", shaftName))) \
     title sprintf("defl velo %s", shaftName) with lines

# vim: set tw=0 :
