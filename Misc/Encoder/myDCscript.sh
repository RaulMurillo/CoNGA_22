#!/bin/bash

echo "My dc_shell script"

# dirs=(N8_0 N17.. N32_2)
# #dirs=(N17..)
# dirs2=(Use_hm_0 Use_hm_1)


for d in Old New IEEE
do
	cd $d
	echo ""
	echo ""
	echo "******** item: ${d}"
	echo ""
	echo ""
	dc_shell-t -f s1
	#ls *.vhdl
	cd ..
done

