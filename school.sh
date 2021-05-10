#!bin/sh

awk 'BEGIN{FS="|";OFS="@"}{
    if($5>90){
        avg = ($5+$6)/2;
        print $1,$2,$3,$4,avg;
    }
}'|\
sort -nrk5 -t "@"|\
head -1
