#!/bin/bash
limite=`cat disc.txt | wc -l`

for i in `seq 2 $limite`
do
	porcen=`cat disc.txt | head -n$i| tail -1 | awk '{print $5}' | sed 's/%//g'`
		if [ $porcen -ge 10 ] && [ $porcen -le 40 ]
		then
			`cat disc.txt | head -n$i | tail -1 >> sol.txt`
		fi
done

