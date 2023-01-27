#!bin/bash

`cat disc.txt | tail -n+2 | sed 's/%/=/g'| awk '{
    if ( $5 >= 41 && $5 <= 50 )
    print}'`
