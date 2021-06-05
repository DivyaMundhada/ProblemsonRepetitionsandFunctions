#! /bin/bash -x


number=0

read -p "Enter value till which you want harmonic number:" n

for (( i=1; i<=n; i++ ))

do
        d=$( echo 1 $i | awk '{print $1/$2}' )
        number=$( echo $d $harmonicnumber | awk '{print $1+$2}' )

done
        echo $number
