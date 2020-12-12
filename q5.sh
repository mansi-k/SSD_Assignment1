#!/bin/bash
read ipt
ipt=`echo $ipt | tr -s '[:space:]' | tr '[:upper:]' '[:lower:]'`
ipr=`echo $ipt | rev`
if [[ "$ipr" == "$ipt" ]]
then
    echo "Yes"
else
    echo "No"
fi
