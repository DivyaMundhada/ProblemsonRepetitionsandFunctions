#! /bin/bash -x

read -p "Enter a number to check if it is a Palindome: " number

function palindrome () {
        local number=$1
        temp1=0
	temp2=$number
        while [ $number -gt 0 ]
        do
        remainder=$(( number % 10 ))
        temp1=$(( ( temp1 * 10 ) + remainder ))
        number=$(( number / 10 ))
        done

        if [ $temp2 -eq $temp1 ]
        then
        echo Number is Palindrome
        else
        echo Number is not a palindrome
        fi
}

echo result="$( palindrome $number )"

