#!/bin/bash

ArrayList=(1 23 64 8 39 88 20 9 13 44)
for (( i = 0; i <= 9 ; i++))
do
	for (( j = $i; j <= 9; j++))
	do
		if [ ${ArrayList[$j]} -lt ${ArrayList[$i]} ]; then
		a="${ArrayList[$j]}"
		ArrayList[$j]=${ArrayList[$i]}
		ArrayList[$i]=$a
		fi
	done
done
for i in "${ArrayList[@]}"
do
	echo $i
done
