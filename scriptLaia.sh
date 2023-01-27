#!/bin/bash

cantLineas=`cat disc.txt | wc -l`

for i in `seq 2 $cantLineas`
do 
    porcen=`cat disc.txt | head -n$i | tail -1 | awk '{print $5}' | sed 's/%//g'`

    if [ $porcen -ge 41 ] && [ $porcen -le 50 ]
    then
       `cat disc.txt | head -n$i | tail -1 >> sol.txt`
    fi
done