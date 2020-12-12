#!/bin/bash
read u
u=`echo $u | grep -o . | sort |tr -d "\n"`
for x in `compgen -c`
do
	c=`echo $x | grep -o . | sort |tr -d "\n"`
	if [ $c == $u ]; then
		echo "Yes"
		echo $x
		exit
	fi
done
echo "No"
