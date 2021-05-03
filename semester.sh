#!/bin/sh

awk 'BEGIN{FS="|";OFS=","}{
    A[$2]=A[$2]+1;
}END{
    for(I in A){
        print(I,A[I]);
    }
}' | sort -nk1 -t " "