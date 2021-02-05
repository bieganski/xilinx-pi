#!/bin/bash

if [ "$1" == "" ]; then
	echo "Usage: $0 <bitstream file path>"
	exit 1
fi
BIT=$1
xc3sprog -c ftdi -p 1 -v $BIT
