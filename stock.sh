#!/bin/sh

awk 'BEGIN{FS=",";TOTAL=0;C=0}{
    if($1=="Jan"){
        TOTAL = TOTAL + $3*$5;
        C++;
    }
}END{if(C>0){print TOTAL}else{print "No Stock found"}}'