#!/bin/bash
read v
v="$(echo -e "${v}" | tr -s '[:space:]')"
n=$(expr ${#v} - 1)    
echo $v | sed -e 's/[()]/ /g' -e 's/^ *//g' -e 's/ *$//g' -e 's/.*/(&)/' | tr -s ' '
