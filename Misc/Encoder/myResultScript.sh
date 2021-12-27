#!/bin/bash

mkdir -p results

./myAreaScript.sh
./myPowerScript.sh
./myTimeScript.sh

python ../../elaborate_json_misc.py $PWD/results Encoder

