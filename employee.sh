#!/bin/sh

# version 1
awk 'BEGIN{FS=";";IGNORECASE=1}{
    max_tax = 0;
    tax = $3*0.1
    if(tax>max_tax){
        max_tax=tax
    }
}END{
    print max_tax;
}'


# version 2
# awk 'BEGIN{FS=";";OFS=","}
# {
# 	tax=$3*0.1;
# 	print $3,tax;
# }'|sort -r | cut -d "," -f 2 | head -n1