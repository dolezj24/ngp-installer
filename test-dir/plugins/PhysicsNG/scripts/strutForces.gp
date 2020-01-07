#!/gnuplot
load 'rbr.gp'

set zeroaxis
set grid xtics
set grid ytics
set xlabel "step [-]"
set ylabel "force [N]"
set key on top right

set title sprintf("data file '%s'", file) noenhanced

plot \
     shaftName = 'LF' \
     file using 1:(strutForce(sprintf("%s", shaftName))) \
     title sprintf("strut force %s", shaftName) with lines, \
     shaftName = 'RF' \
     file using 1:(strutForce(sprintf("%s", shaftName))) \
     title sprintf("strut force %s", shaftName) with lines, \
     shaftName = 'LB' \
     file using 1:(strutForce(sprintf("%s", shaftName))) \
     title sprintf("strut force %s", shaftName) with lines, \
     shaftName = 'RB' \
     file using 1:(strutForce(sprintf("%s", shaftName))) \
     title sprintf("strut force %s", shaftName) with lines

# vim: set tw=0 :
