#!/bin/sh

awk 'BEGIN{FS="|";OFS=" ";C=0}{
    if($3 >= 45 && $3 <50){
        print $1,$2,50-$3;
        C = C+1;
    }
}END{
    if(C ~ 0){
        print "No need to give grace"
    }
}'