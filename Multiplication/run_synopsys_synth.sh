#!/bin/bash

for d in ./*/
do
  cd $d
  ./myDCScript.sh
  ./myResultScript.sh
  cd ..
done

python gen_synopsys_json.py
