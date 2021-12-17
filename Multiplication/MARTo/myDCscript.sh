#!/bin/bash

echo "My dc_shell script"

# dirs=(N8_0 N17.. N32_2)
# #dirs=(N17..)
# dirs2=(Use_hm_0 Use_hm_1)


for w in 8 16 32
do
	for es in {2..2}
	do
		cp s1 "mult_${w}_${es}"
		cd "mult_${w}_${es}"
		echo ""
		echo ""
		echo "******** item: ${w}_${es}"
		echo ""
		echo ""
		dc_shell-t -f s1
		#ls *.vhdl
		cd ..
	done
done

