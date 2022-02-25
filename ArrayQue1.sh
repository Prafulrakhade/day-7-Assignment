#!/bin/bash/ -x

MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]
do
        number[$count]=$((RANDOM%900 + 100))
        let "count += 1"
done

echo ${number[@]}

largest=${number[0]}
secondGreatest='unset'

for((i=1; i < ${#number[@]}; i++))
do
        if [[ ${number[i]} > $largest ]]
        then
        secondGreatest=$largest
        largest=${number[i]}

        elif (( ${number[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${number[i]} > $secondGreatest ]]; }
        then
                secondGreatest=${number[i]}
        fi
done

echo "Second Largest Number: $secondGreatest"

smallest=${number[0]}
secondSmallest='unset'

for((i=1; i < ${#number[@]}; i++))
do
        if [[ ${number[i]} < $smallest ]]
        then
        secondSmallest=$smallest
        smallest=${number[i]}

        elif { [[ "$secondSmallest" = "unset" ]] || [[ ${number[i]} < $secondSmallest ]]; }
        then
                secondSmallest=${number[i]}
        fi
done

echo "Second Smallest Number: $secondSmallest"
