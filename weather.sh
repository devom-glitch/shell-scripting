#!/bin/sh

awk 'BEGIN{FS="-";IGNORECASE=1;OFS=","}{
    if($4=="karnataka"){
        print $1,$2,$3;
        c=c+1
        sum = sum + $2
    }
}END{
    if(c==0){
        print "No records found"
    }else{
        print("Average temperature in Karnataka:"sum/c)
    }
}' | sort -nrk3 -t ","

