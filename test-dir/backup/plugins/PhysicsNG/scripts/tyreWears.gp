#!/gnuplot
load 'rbr.gp'

set zeroaxis
set grid xtics
set grid ytics
set xlabel "step [-]"
set ylabel "wear [%]"
set key on top right

set title sprintf("data file '%s'", file) noenhanced

to_pct=100.0

plot \
     shaftName = 'LF' \
     file using 1:(tyreWear(sprintf("%s", shaftName)) * to_pct) \
     title sprintf("tyre wear %s", shaftName) with lines, \
     shaftName = 'RF' \
     file using 1:(tyreWear(sprintf("%s", shaftName)) * to_pct) \
     title sprintf("tyre wear %s", shaftName) with lines, \
     shaftName = 'LB' \
     file using 1:(tyreWear(sprintf("%s", shaftName)) * to_pct) \
     title sprintf("tyre wear %s", shaftName) with lines, \
     shaftName = 'RB' \
     file using 1:(tyreWear(sprintf("%s", shaftName)) * to_pct) \
     title sprintf("tyre wear %s", shaftName) with lines

# vim: set tw=0 :
