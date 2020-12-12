#!/bin/bash
read ipt
ipt=$(echo $ipt | rev)
num=$(echo $ipt | tr -d ' ')
if [[ ${#num} -le 1 || $num =~ [^[:digit:]] ]]
then
    echo "Invalid"
    exit
fi
res=0
for (( i=0; i<${#num}; i++ ))
do
    if [ `echo "$i % 2" | bc` -eq 1 ]; then
        t=`expr ${num:$i:1} \* 2`
        t=$([ "$t" -gt 9 ] && echo "$t - 9" | bc || echo "$t")
        res=`expr $t + $res`
    else
        res=`expr ${num:$i:1} + $res`
    fi
    echo $res
done
if [ `echo "$res % 10" | bc` -eq 0 ]
then
    echo "Valid"
else
    echo "Invalid"
fi

