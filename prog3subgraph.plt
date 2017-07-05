set terminal postscript enhanced

set autoscale 
set output "prog3subresults.ps"
set autoscale 
set title "Inner Product of Vector w/ Length N"
set ylabel "Inner Product"
plot "prog3subresults.log" index 0:0 using 1:2 ti "Inner Product" with lines