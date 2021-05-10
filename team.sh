#!/bin/sh

awk 'BEGIN{FS="|";MAX=0;c=0}{
    if($2 ~ /^Manchester/ && $3>MAX){
        NAME = $2;
        MAX = $3;
        c=c+1;
    }
}END{
    if(c>0){
        print NAME;
    }
}'