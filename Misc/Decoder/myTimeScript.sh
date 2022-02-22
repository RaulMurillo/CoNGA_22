#!/bin/bash

echo "My timing report script"

touch results/delay.csv
R="$PWD/results/delay.csv"

for d in Old New IEEE
do
	cd $d
	printf ${d}, >> $R
	grep -e 'data arrival' *timing.report | sed '1q' | awk 'NF>1{print $NF}' >> $R

	cd ..
done
