#!/bin/bash
cat ~/.bash_history | tail -10 | awk '{print $1;}' | sort | uniq -c | sort -r | awk '{print $2 " " $1}'

