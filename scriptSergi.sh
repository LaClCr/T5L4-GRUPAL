#!/bin/bash

cantLineas=`cat disc.txt | wc -l`

for i in `seq 2 $cantLineas`
do 
    porcen=`cat disc.txt | head -n$i | tail -1 | awk '{print $5}' | sed 's/%//g'`

    if [ $porcen -ge 51 ] && [ $porcen -le 100 ]
    then
       `cat disc.txt | head -n$i | tail -1 >> sol.txt`
    fi
done