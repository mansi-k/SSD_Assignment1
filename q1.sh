#!/bin/bash
mkdir Assignment1
cd Assignment1
touch lab{1..5}.txt
find . -maxdepth 1 -name "*.txt" -exec sh -c 'f="{}"; mv -- "$f" "${f%.txt}.c"' \;
ls -lASr
find ~ -maxdepth 2 -type d,f
ls -1 "$PWD"/*.txt 2>/dev/null
