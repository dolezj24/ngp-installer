#!/gnuplot
load 'rbr.gp'

set zeroaxis
set grid xtics
set grid ytics
set xlabel "step [-]"
set ylabel "temperature [°C]"
set key on top right

set title sprintf("data file '%s'", file) noenhanced

plot \
     file using 1:(radCoolTemp('')) \
     title "radiator coolant T" with lines, \
     file using 1:(engCoolTemp('')) \
     title "engine coolant T" with lines, \
     file using 1:(engTemp('')) \
     title "engine T" with lines

# vim: set tw=0 :
