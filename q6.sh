#!/bin/bash
res=$1
i=0
for arg in "$@"
do
    if [ $i == 1 ]
    then
        res=`echo "$res ^ $arg" | bc`
    fi
    i=1
done

echo $res | sed 's/\\ //g'

