set title "Latency of Single Connections vs. Forking Mode"
set auto x
set yrange [0:.2]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set grid x
set grid y
set xlabel "HTTP Request"
set ylabel "Latency (seconds)"

plot 'latency.dat' using 2:xticlabels(1) title "Single Connection", '' using 3:xticlabels(1) title "Forking Mode"

set term png
set output "latency.png"
replot
set term x11