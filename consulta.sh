#!/bin/bash
numLin=`cat disc.txt | wc -l`

for i in `seq 2 $numLin`
do
   porcentaje=`cat disc.txt | head -n$i | tail -1| awk '{print $5}' | sed 's/%//'`
    if [  $porcentaje -ge 2 ] && [ $porcentaje -le 9 ]
    then
       `cat disc.txt | head -n$i | tail -1 >> sol.txt `
    fi
done
