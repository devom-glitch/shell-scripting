#!/bin/sh

awk 'BEGIN{FS=";";IGNORECASE=1}
{
    if($3=="available")
    print $0;
}' | awk 'BEGIN{FS=";"}
{
    a[$2]++;
    c++;
} END{
    if(c>0){
        for(i in a){
            print(i,":",a[i])
        }
    }else{
        print "No Course available";
    }
}' | sort -nrk2 -t ":"

# change mode to execute for user
# chmod u+x CourseRegistration.sh 
# read file and execute
# cat ./INPUT/cr.txt|./CourseRegistration.sh