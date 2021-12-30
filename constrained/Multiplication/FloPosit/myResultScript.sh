#!/bin/bash

rm -rf results
mkdir -p results

./myAreaScript.sh
./myPowerScript.sh
./myTimeScript.sh

python ../../elaborate_json.py $PWD/results Flo-Posit

