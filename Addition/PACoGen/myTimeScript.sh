#!/bin/bash

echo "My timing report script"

touch results/delay.csv
R="$PWD/results/delay.csv"

for w in {8..32..2}
do
  for es in {2..2}
  do
    
	cd "add_${w}_${es}"
	printf ${w},${es}, >> $R
	grep -e 'data arrival' *timing.report | sed '1q' | awk 'NF>1{print $NF}' >> $R
	
	cd ..
  done
done
