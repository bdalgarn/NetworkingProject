set title "Throughput of Single Connection vs. Forking Mode [0:100]"
set auto x
set yrange [0:100]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
set grid x
set grid y
set xlabel "File Size"
set ylabel "Throughput (seconds)"

plot 'throughput.dat' using 2:xticlabels(1) title "Single Connection", '' using 3:xticlabels(1) title "Forking Mode"

set term png
set output "throughput1.png"
replot
set term x11