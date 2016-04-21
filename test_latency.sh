#!/bin/sh

HOST=student02.cse.nd.edu
PORT1=9907
PORT2=9906


# Use thor.py to test spidey.py in non-forking mode
	# For directory listings
	#printf "Non-forking directory listings:\n"
	./thor.py -v -p 10 -r 10 ${HOST}:${PORT1} 2>&1 > /dev/null | grep Average | cut -d ' ' -f 8 | cut -b 1,2,3,4 | awk '{sum=sum+$0}; END{print "Avg. Elapsed Time for Non-forking directory listings = ",sum/10}'
	# For static files
	#printf "Non-forking static files:\n"
	./thor.py -v -p 10 -r 10 ${HOST}:${PORT1}/songs/coffee.txt 2>&1 > /dev/null | grep Average  | cut -d ' ' -f 8 | cut -b 1,2,3,4 | awk '{sum=sum+$0}; END{print "Avg. Elapsed Time for Non-forking static files = ",sum/10}'
	# For CGI scripts
	#printf "Non-forking CGI scripts:\n"
	./thor.py -v -p 10 -r 10 ${HOST}:${PORT1}/cgi-bin/env.sh 2>&1 > /dev/null | grep Average | cut -d ' ' -f 8 | cut -b 1,2,3,4 | awk '{sum=sum+$0}; END{print "Avg. Elapsed Time for Non-forking CGI scripts = ",sum/10}'

# Use thor.py to test spidey.py in forking mode
	# For directory listings
	#printf "Forking directory listings:\n"
	./thor.py -v -p 10 -r 10 ${HOST}:${PORT2} 2>&1 > /dev/null | grep Average | cut -d ' ' -f 8 | cut -b 1,2,3,4 | awk '{sum=sum+$0}; END{print "Avg. Elapsed Time for Forking directory listings = ",sum/10}'
	# For static files
	#printf "Forking static files:\n"
	./thor.py -v -p 10 -r 10 ${HOST}:${PORT2}/songs/coffee.txt 2>&1 > /dev/null | grep Average  | cut -d ' ' -f 8 | cut -b 1,2,3,4 | awk '{sum=sum+$0}; END{print "Avg. Elapsed Time for Forking static files = ",sum/10}'
	# For CGI scripts
	#printf "Forking CGI scripts:\n"
	./thor.py -v -p 10 -r 10 ${HOST}:${PORT2}/cgi-bin/env.sh 2>&1 > /dev/null | grep Average | cut -d ' ' -f 8 | cut -b 1,2,3,4 | awk '{sum=sum+$0}; END{print "Avg. Elapsed Time for Forking CGI scripts = ",sum/10}'



