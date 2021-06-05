#! /bin/bash -x


function conversion(){
        local option=$1

        case $option in

                1) read -p "Enter value in Degree Celcius:" celcius
                        if [ $celcius -ge 0 ] && [ $celcius -le 100 ]
                        then
                        a=$( echo 9 5 | awk '{print $1/$2}' )
                        Fahrenheit=$( echo $celcius $a 32 | awk '{print ($1*$2)+32 }' )
                        echo $Fahrenheit Fahrenheit
                        else
                        echo "Enter range between 0 to 100 degree celcius"
                        fi;;
                2) read -p "Enter value in Degree Fahrenheit:" fahrenheit
                        if [ $fahrenheit -ge 32 ] && [ $fahrenheit -le 212 ]
                        then
                        b=$( echo 5 9 | awk '{print $1/$2}' )
                        Celcius=$( echo $fahrenheit 32 $b | awk '{print ($1-$2)*$3 }' )
                        echo $Celcius Celcius
                        else
                        echo "Enter range between 32 to 212 degree fahrenheit"
                        fi;;
                        *) echo "Wrong input";;

        esac
}


echo "Enter 1 for converting celcius to fahrenheit and 2 for converting fahrenheit to celcius:"

read option

result="$( conversion $option )"
echo $result
