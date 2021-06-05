#! /bin/bash -x


Head=0
Tail=1
H=0
T=0

while [ $H -le 10 ] && [ $T -le 10 ]
do
        num=$(( RANDOM % 2 ))

        if [ $num -eq 0 ]
        then
        echo Head
        (( H++ ))

        else
        echo Tail
        (( T++ ))
        fi
done

