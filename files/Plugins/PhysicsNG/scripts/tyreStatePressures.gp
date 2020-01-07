#!/gnuplot
load 'rbr.gp'

set zeroaxis
set grid xtics
set grid ytics
set xlabel "step [-]"
set ylabel "pressure [bar]"
set key on top right

set title sprintf("data file '%s'", file) noenhanced

to_bar = (1. / 1.e5)

plot \
     shaftName = 'LF' \
     file using 1:(tyreStatePressure(sprintf("%s", shaftName)) * to_bar) \
     title sprintf("tyre pressure %s", shaftName) with lines, \
     shaftName = 'RF' \
     file using 1:(tyreStatePressure(sprintf("%s", shaftName)) * to_bar) \
     title sprintf("tyre pressure T %s", shaftName) with lines, \
     shaftName = 'LB' \
     file using 1:(tyreStatePressure(sprintf("%s", shaftName)) * to_bar) \
     title sprintf("tyre pressure T %s", shaftName) with lines, \
     shaftName = 'RB' \
     file using 1:(tyreStatePressure(sprintf("%s", shaftName)) * to_bar) \
     title sprintf("tyre pressure T %s", shaftName) with lines

# vim: set tw=0 :
