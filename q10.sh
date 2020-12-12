#!/bin/bash
read opt
read n
read res
b=1
while [ $n -gt 1 ]
do
    read b
    res=`echo "$res $opt $b" | bc -l`
    n=`expr $n - 1` 
done
if [[ $opt == "/" ]]
then
    printf "%0.4f\n" "$res"
else
    echo $res | sed 's/\\ //g'
fi
