#!/bin/sh

awk '{
    if($2 ~ /2019$/){
        print $1,$3;
    }
}'