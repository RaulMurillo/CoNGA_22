#!/bin/bash

echo "My power report script"

touch results/power.csv
R="$PWD/results/power.csv"

for w in 8 16 32
do
  for es in {2..2}
  do
    
	cd "mult_${w}_${es}"
	printf ${w},${es}, >> $R
	# grep -e 'mW$' *power.report | awk 'NF>1{p = $(NF-1) * 1000 ; print p}' >> $R
	grep -e '^Total.*mW$' *power.report | awk 'NF>1{p = $(NF-1) ; print p}' >> $R
	
	cd ..
  done
done
