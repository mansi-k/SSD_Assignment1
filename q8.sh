#!/bin/bash
crontab $1 2> /dev/null
if [ $? -ne 0 ]; then
    echo "No"
else
    echo "Yes"
fi
