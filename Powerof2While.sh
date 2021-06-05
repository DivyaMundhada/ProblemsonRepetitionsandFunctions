#! /bin/bash -x

read -p "Enter the number : " n
i=1
while [ $i -le $n ] && [ $((2*i)) -le 256 ]
do
echo $((2 * i))
((i++))
done


