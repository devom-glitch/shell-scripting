#!/bin/sh

awk 'BEGIN{FS="#";OFS=" , ";C=0;F=0}{
    if($4 ~ /2017/){
        F=F+1;
        print $1, $2, $3, $4;
    }
    if($3 > 20){
        C+=1;
    }
}END{
    if(F==0){
        print("No player found");
    }
    print("No of player played more than 20 matched: "C);
}'

# version 2
# # your code goes here
# awk 'BEGIN{FS="#";OFS=" , ";COUNT=0}{
# 	if(substr($4,4,4) == 2017){
# 		count += 1;
# 		print $1,$2,$3,$4;
# 	}
# }
# END{
# 	if(count == 0)
# 		print "No player found";
# }'