#!/bin/sh

echo "Customer Name"
awk 'BEGIN{FS="|"}{
if($2 !~ /Ms. |Mr. |MS. |MR. /){
    print $2;
} 
}'