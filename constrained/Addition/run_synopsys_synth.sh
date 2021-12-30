#!/bin/bash

for d in ./*/
do
  cd $d
  echo $PWD
  ./myDCscript.sh && \
  ./myResultScript.sh
  cd ..
done

python gen_synopsys_json.py
