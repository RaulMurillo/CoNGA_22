#!/bin/bash

echo "My power report script"

touch results/power.csv
R="$PWD/results/power.csv"

for d in Old New
do
	cd $d
	printf ${d}, >> $R
	# grep -e 'mW$' *power.report | awk 'NF>1{p = $(NF-1) * 1000 ; print p}' >> $R
	grep -e '^Total.*mW$' *power.report | awk 'NF>1{p = $(NF-1) ; print p}' >> $R
	
	cd ..
done
