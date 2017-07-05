set terminal postscript enhanced

set autoscale 
set output "prog4results.ps"
set autoscale 
set title "Diagonal"

plot "prog4results.log" using 1:2 ti "Vector" with lines