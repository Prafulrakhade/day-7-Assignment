#! /bin/bash -x


arr=(-1 2 4 3 1 5 6)

for((i=0; i < ${#arr[@]}; i++))
do
        for((j=i+1; j < ${#arr[@]}; j++))
        do
                for((k=j+1; k < ${#arr[@]}; k++))
                do
                        if [[ ${arr[i]}+${arr[j]}+${arr[k]}==0 ]]
                        then
                                echo "Numbers are: ${arr[i]} ${arr[j]} ${arr[k]}"
                        fi
                done
        done
done
