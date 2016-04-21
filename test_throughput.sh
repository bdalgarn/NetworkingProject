#!/bin/bash

HOST=student02.cse.nd.edu
PORT1=9957
PORT2=9958


# Use thor.py to test spidey.py in non-forking mode
	# For small static files
	./thor.py -v ${HOST}:${PORT1}/temp/small.data 2>&1 > /dev/null | grep Average | cut -d ' ' -f 8 | cut -b 1,2,3,4 #| awk '{print "Avg. Elapsed Time for Non-forking small static files = ",$0}'
	# For medium static files
	./thor.py -v ${HOST}:${PORT1}/temp/med.data 2>&1 > /dev/null | grep Average  | cut -d ' ' -f 8 | cut -b 1,2,3,4 #| awk '{print "Avg. Elapsed Time for Non-forking medium static files = ",$0}'
	# For large static files
	./thor.py -v ${HOST}:${PORT1}/large.data 2>&1 > /dev/null | grep Average | cut -d ' ' -f 8 | cut -b 1,2,3,4 #| awk '{print "Avg. Elapsed Time for Non-forking large static files= ",$0}'

# Use thor.py to test spidey.py in forking mode
	# For samll static files
	./thor.py -v ${HOST}:${PORT2}/temp/small.data 2>&1 > /dev/null | grep Average | cut -d ' ' -f 8 | cut -b 1,2,3,4 #| awk '{print "Avg. Elapsed Time for Forking small static files = ",$0}'
	# For medium static files
	./thor.py -v ${HOST}:${PORT2}/temp/med.data 2>&1 > /dev/null | grep Average  | cut -d ' ' -f 8 | cut -b 1,2,3,4 #| awk '{print "Avg. Elapsed Time for Forking medium static files = ",$0}'
	# For large static files
	./thor.py -v ${HOST}:${PORT2}/large.data 2>&1 > /dev/null | grep Average | cut -d ' ' -f 8 | cut -b 1,2,3,4 #| awk '{print "Avg. Elapsed Time for Forking large static files = ",$0}'



