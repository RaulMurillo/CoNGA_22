#!/bin/bash

echo "My area report script"

touch results/area.csv
R="$PWD/results/area.csv"

for d in Old New
do
	cd $d
  printf ${d}, >> $R
  grep -e 'Total cell area' *area.report | awk 'NF>1{print $NF}' >> $R
  
  cd ..
done

