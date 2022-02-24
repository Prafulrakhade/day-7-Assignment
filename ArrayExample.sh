#!/bin/bash -x

array=(Bhavana ,Praful, Sanjay, Harshada, Anmol, Abhi, Pavan, 89. 78, 555, 0)

#to print all the elements in the array
echo ${array[@]}
echo ${array[*]}
echo ${array[@]:0}
echo ${array[*]:0}

#to print the particular element
echo ${array[0]}
echo ${array}

echo ${array[4]}
echo ${array[10]}
echo ${array[50]}


#to print the elements in range

echo ${array[@]:1:5}
echo ${array[@]:0:7}
