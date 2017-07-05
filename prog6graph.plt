set terminal postscript enhanced

set autoscale 
set output "prog6results.ps"
set autoscale 
set title "Magnitization"
set ylabel "Inner Product"
plot "prog6results.log" index 0:0 using 1:2 ti "Magnetization" with lines