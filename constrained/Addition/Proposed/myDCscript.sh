#!/bin/bash

echo "My dc_shell script"

# dirs=(N8_0 N17.. N32_2)
# #dirs=(N17..)
# dirs2=(Use_hm_0 Use_hm_1)


for w in 8 16 32
do
	for es in {1..2}
	do
	if [[ $w -ne 32 || $es -ne 1 ]]; then
		cp s1 "add_${w}_${es}/"
		cd "add_${w}_${es}"
		if [[ $w = 8 ]]; then
			sed -i "s/set_max_delay 1/set_max_delay 1/g" s1
		elif [[ $w = 16 ]]; then
			sed -i "s/set_max_delay 1/set_max_delay 2/g" s1
		elif [[ $w = 32 ]]; then
			sed -i "s/set_max_delay 1/set_max_delay 3/g" s1
		fi
		echo ""
		echo ""
		echo "******** item: ${w}_${es}"
		echo ""
		echo ""
		dc_shell-t -f s1
		#ls *.vhdl
		cd ..
	fi
	done
done

