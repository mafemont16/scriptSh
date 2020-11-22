#!/bin/bash

echo ""
echo "-----------------------------------------------------"
echo "*****************************************************"
echo ">>------>******Welcome to the Nim Game******<------<<"
echo "*****************************************************"
echo "-----------------------------------------------------"
echo ""
echo "Hello there! What's your name?"
echo ""
read name
echo ""
echo "Welcome to the Nim game (^_^), $name"
echo "----------------------------------------------------"


nb_items=20

while [ $nb_items -gt 0 ]
do
    #PLAYER'S TURN
        echo ""
        echo "*****************************************************"
        echo "*********>>------>It's $name's turn<------<<*********"
        echo "*****************************************************"
        echo ""
        echo "There are $nb_items wooden sticks: ||||||||||||||||||||"
        echo "How many do you want take [between 1 - 3] ?"
        read player_choice
        while [ $player_choice -gt 3 ] || [ $player_choice -lt 1 ]
        do
            echo "Please choose again, how many sticks do you want take [between 1 - 3] ?"
            read player_choice
            if [ $player_choice -gt 3 ] || [ $player_choice -lt 1 ]
            then
                continue
            fi
        done
        echo "$name, you take $player_choice sticks"
        let "nb_items=$nb_items - $player_choice"
        echo "Now there are: $nb_items sticks left"
        echo ""
      #COMPUTER'S TURN
        echo ""
        echo "*****************************************************"
        echo "******>>------>It's the computer's turn<------<<*****"
        echo "*****************************************************"
        echo ""
        echo "There are $nb_items wooden sticks: ||||||||||||||||||||"
        let "ai_choice= 4 - $player_choice"
        echo "Computer took $ai_choice sticks"
        let "nb_items=$nb_items-$ai_choice"
        echo "Now there are: $nb_items sticks left"
        if [ $nb_items -eq 0 ]
        then
            echo "{-_-} You lost!"
        fi
done
