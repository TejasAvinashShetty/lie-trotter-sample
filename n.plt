set term png 16
set out "n.png"

set log xy
set xla "n"
set yla "Error"
set format y "10^{%L}"
p "n.dat" pt 6 ps 1.5 t ""\
,1/x*2.8e-2 lc rgb "black" lw 2 t "1/n"

