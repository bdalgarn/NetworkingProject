#!/bin/sh

PORT1=9905
PORT2=9906

./spidey.py -v -p ${PORT1} &

./spidey.py -v -p ${PORT2} -f

