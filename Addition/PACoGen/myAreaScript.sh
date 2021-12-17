#!/bin/bash

echo "My area report script"

touch results/area.csv
R="$PWD/results/area.csv"

for w in {8..32..2}
do
  for es in {2..2}
  do
    
    cd "add_${w}_${es}"
    printf ${w},${es}, >> $R
    grep -e 'Total cell area' *area.report | awk 'NF>1{print $NF}' >> $R
    
    cd ..
  done
done

