#!/bin/bash

echo "My timing report script"

touch results/delay.csv
R="$PWD/results/delay.csv"

for w in 8 16 32
do
	for es in {1..2}
	do
	if [[ $w -ne 32 || $es -ne 1 ]]; then
		cd "mult_${w}_${es}"
		printf ${w},${es}, >> $R
		grep -e 'data arrival' *timing.report | sed '1q' | awk 'NF>1{print $NF}' >> $R
		
		cd ..
	fi
	done
done
