#!/bin/bash

numLim=`cat disc.txt | wc -l`

for i in `seq 2 $numLim`
do
    percent=`cat disc.txt | head -n$i | tail -1 | awk '{print $5}' | sed 's/%//'`
    if [ $percent -ge 0 ] && [ $percent -le 1 ]
    then
        `cat disc.txt | head -n$i | tail -1 >> sol.txt`

    fi
done
   