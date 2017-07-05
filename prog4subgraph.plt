set terminal postscript enhanced

set autoscale 
set output "prog4subresults.ps"
set autoscale 
set title "Diagonal"

plot "prog4subresults.log" using 1:2 ti "Vector" with lines