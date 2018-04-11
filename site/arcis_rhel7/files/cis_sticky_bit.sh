#!/bin/sh
# perfecto25-cis_rhel7
# CIS RHEL7 Benchmark
# Rule 1.1.17

BIT=`df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null`

if [[ $BIT ]] 
then	
	ARR="["
	
	for i in $BIT
	do
		ARR="${ARR}'${i}',"
	done

	# remove last comma
	ARR=`echo ${ARR::-1}]`

	# echo facter
	echo $ARR
fi

