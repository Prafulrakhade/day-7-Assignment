#!/bin/bash -x

counter=0
fruits[((counter++))]="apple"
fruits[((counter++))]="mango"
fruits[((counter++))]="kiwi"
echo ${fruits[@]}
