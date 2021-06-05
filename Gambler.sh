#! /bin/bash -x

won=0
loss=1
money=100
wins=0
bets=0

while [ $money -ge 0 ]

do
        num=$(( RANDOM%2))
        if [ $num -eq 0 ]
        then
        money=$(( money + 1 ))
        if [ $money -eq 200 ]
        then break
        fi
        (( wins++ ))
        else
        money=$(( money - 1 ))
        fi
        if [ $money -eq 0 ]
        then break
        fi
        (( bets++ ))
done

echo "number of wins :" $wins
echo "number of bets :" $bets
