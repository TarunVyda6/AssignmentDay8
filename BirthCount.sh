#! /bin/bash


declare -A birthday

for ((i=1;i<=50;i++))
do
	monthAndYear=""
	index="person$i"
	yr=$(( $RANDOM % 2 + 92 ))
	mo=$(( $RANDOM % 12 + 1))
	monthAndYear="$mo-$yr"
	array=(${birthday[$monthAndYear]})
	array+=($index)
	birthday[$monthAndYear]=${array[@]}

done

for i in ${!birthday[@]}
do
	echo $i  : ${birthday[$i]}
done
