#!/gnuplot
load 'rbr.gp'

set zeroaxis
set grid xtics
set grid ytics
set xlabel "step [-]"
set ylabel "deflection [mm]"
set key on top right

set title sprintf("data file '%s'", file) noenhanced

to_mm=1000.0

plot \
     shaftName = 'LF' \
     file using 1:(deflection(sprintf("%s", shaftName)) * to_mm) \
     title sprintf("defl %s", shaftName) with lines, \
     shaftName = 'RF' \
     file using 1:(deflection(sprintf("%s", shaftName)) * to_mm) \
     title sprintf("defl %s", shaftName) with lines, \
     shaftName = 'LB' \
     file using 1:(deflection(sprintf("%s", shaftName)) * to_mm) \
     title sprintf("defl %s", shaftName) with lines, \
     shaftName = 'RB' \
     file using 1:(deflection(sprintf("%s", shaftName)) * to_mm) \
     title sprintf("defl %s", shaftName) with lines

# vim: set tw=0 :
