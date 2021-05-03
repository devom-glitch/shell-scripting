#!/bin/sh

awk 'BEGIN{FS="|"}{
    depCon[$3]++;
}END{
    for(c in depCon){
        print c,depCon[c];
    }
}' | sort -nrk2 -t " "