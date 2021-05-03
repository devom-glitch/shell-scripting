#!/bin/sh

sort -nrk1 -t ";"|\
awk 'BEGIN{FS=";"}{
    print $1,$3*0.2
}'|\
sort -nrk2 -t " "|\
head -3