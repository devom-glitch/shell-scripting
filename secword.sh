#!/bin/sh

awk '{
    if($2 ~ /^[a-zA-Z]+/){
        print $2;
    }
}'