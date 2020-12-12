#!/bin/bash
ps au --no-headers | awk '{print $2}' > pid.txt
read n
head -"$n" pid.txt
