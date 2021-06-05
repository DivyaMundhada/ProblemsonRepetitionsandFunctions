  
#! /bin/bash -x

count=0

read -p "Enter lower limit:" lower
read -p "Enter upper limit:" upper

for (( j=lower; j<=upper; j++ ))

do

for (( i=1; i<=j; i++ ))
do
        c=$( echo $j $i | awk '{print $1%$2}' )
        if [ $c -eq 0 ]
        then (( count++ ))
        fi
done

if [ $count -eq 2 ]
then
        echo $j
fi
count=0
done
