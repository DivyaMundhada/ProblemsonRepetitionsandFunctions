#! /bin/bash -x

declare -A dice

one=0
two=0
three=0
four=0
five=0
six=0

while [ $one -le 10 ] && [ $two -le 10 ] && [ $three -le 10 ] && [ $four -le 10 ] && [ $five -le 10 ] && [ $six -le 10 ]
do

die=$(( RANDOM%6 + 1 ))

if [ $die -eq 1 ]
then
dice[1]=$((one++))

elif [ $die -eq 2 ]
then
dice[2]=$((two++))

elif [ $die -eq 3 ]
then
dice[3]=$((three++))

elif [ $die -eq 4 ]
then
dice[4]=$((four++))

elif [ $die -eq 5 ]
then
dice[5]=$((five++))

elif [ $die -eq 6 ]
then
dice[6]=$((six++))
fi

done

for key in ${!dice[*]}
        do
        temp=${dice[$key]}
        if [ $temp -eq 10 ]
        then
        echo Number of dice which occured maximum is $key
        break
        fi
done

min=10
for ((i=1;i<7;i++))
do
if [ ${dice[$i]} -lt $min ]
then
min=${dice[$i]}
num=$i
fi
done
echo Number of dice which occured minimum is $num

echo one:${dice[1]}
echo two:${dice[2]}
echo three:${dice[3]}
echo four:${dice[4]}
echo five:${dice[5]}
echo six:${dice[6]}

