#!/bin/sh

awk 'BEGIN{FS="-";c=0}{
    if($2 ~ $3 && $3 ~ $4){
        c = c + 1;
        print $0;
    }
}END{
    print("Total:",c)
}'