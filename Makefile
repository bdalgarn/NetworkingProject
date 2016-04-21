all:    project01.pdf

project01.pdf:  project01.tex latency.png throughput.png 
	pdflatex project01.tex

latency.png: latency.dat latency.plt
	gnuplot ./latency.plt

throughput.png: throughput.dat throughput.plt
	gnuplot ./throughput.plt 

clean:
	rm -f project01.pdf latency.png throughput.png 