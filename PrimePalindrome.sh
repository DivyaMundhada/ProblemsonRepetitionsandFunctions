#! /bin/bash -x


function prime(){
        local number=$1
        d=0

        for (( i=1; i<=number; i++ ))
        do
        c=$( echo $number $i | awk '{print $1%$2}' )
        if [ $c -eq 0 ]
        then (( d++ ))
        fi
        if [ $d -gt 3 ]
        then break
        fi
        done

        if [ $d -eq 2 ]
        then
        echo "number is prime"
        else
        echo "number is not prime"
        fi


}

function palindrome(){

        local number=$1
        temp=$number
        sum=0

        while [ $number -gt 0 ]
        do
        r=$(( number % 10 ))
        sum=$(( ( sum * 10 ) + r ))
        number=$(( number / 10 ))
        done
        echo $sum
}

read -p "Enter a number:" number

result1="$( prime $number )"
sum="$( palindrome $number )"
result2="$( prime $sum )"

echo $result1

echo Palindrome of number is $sum

echo $result2
