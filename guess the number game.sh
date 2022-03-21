#!/usr/bin/bash

number_to_guess=$((1 + $RANDOM % 100))
attempts_left=0
echo "$number_to_guess"


for i in {1..10}
do

    printf "Type number: "
    read -r n

    ((attempts_left=10-$i))

    if [ $n -eq $number_to_guess ]
        then
            echo "Victory!"
            exit
        else
            if [ $n -gt $number_to_guess   ]
	        then
                    echo "Wrong, number guessed is GREATER than N"
	        else
                    echo "Wrong, number guessed is SMALLER than N"
	    fi
            echo "Attempts left: $attempts_left"
            echo ""

    fi

    if [ $attempts_left -eq 0 ]
        then
            echo "N"
            exit
    fi
done








