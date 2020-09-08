#! /bin/bash

declare -A game
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
while(( $count1 < 10 && $count2 < 10 && $count3 < 10 && $count4 < 10 && $count5 < 10 && $count6 < 10 ))
do
	random=$(( RANDOM%6+1 ))
	if(( $random == 1 ))
	then
		count1=$(( $count1+1 ))
		game[1]=$count1
	elif(( $random == 2 ))
        then
                count2=$(( $count2+1 ))
                game[2]=$count2
	elif(( $random == 3 ))
        then
                count3=$(( $count3+1 ))
                game[3]=$count3
        elif(( $random == 4 ))
        then
                count4=$(( $count4+1 ))
                game[4]=$count4
        elif(( $random == 5 ))
        then
                count5=$(( $count5+1 ))
                game[5]=$count5
        elif(( $random == 6 ))
        then
                count6=$(( $count6+1 ))
                game[6]=$count6
        fi
done
largest=${game[1]}
smallest=${game[1]}
max=0
min=0
echo ${!game[2]}
for (( i=2;i<=6;i++ ))
do
        if [ $largest -lt ${game[$i]} ]
        then
                largest=${game[$i]}
		max=$i
	fi
        if [ $smallest -gt ${game[$i]} ]
        then
                smallest=${game[$i]}
		min=$i
        fi

done


echo $max" reached max number of times "
echo $min" reached min number of times "
