#!/bin/bash 

echo ""
echo "*****************************************************"
echo "*****************************************************"
echo "************** Welcome to the Nim Game **************"
echo "*****************************************************"
echo "*****************************************************"
echo ""
echo "Hello there! What's your name?"
echo ""
read name 
echo ""
echo "Welcome to the game, $name"
echo "*****************************************************"


nb_items=20

while [ $nb_items -gt 0 ]
do
    #Turn of PLAYER 1
        echo ""
        echo "It's $name's turn:"
        echo "There are $nb_items items: ||||||||||||||||||||"
        echo "How many items do you want take [between 1 - 3] ?"
        read player_choice
        while [ $player_choice -gt 3 ] || [ $player_choice -lt 1 ]
        do
            echo "Please choose again, how many items do you want take [between 1 - 3] ?"
            read player_choice
            if [ $player_choice -gt 3 ] || [ $player_choice -lt 1 ]
            then
                continue
            fi
        done
        echo "$name, you take $player_choice"
        let "nb_items=$nb_items - $player_choice"
        echo "Now there are: $nb_items left" 
        echo ""
    #Turn of IA - computer
        echo "Computer's turn: "
        echo "There are $nb_items items: ||||||||||||||||||||"
        let "ai_choice=4 - $player_choice"
        echo "Computer, you took $ai_choice"
        let "nb_items=$nb_items-$ai_choice"
        echo "Now there are: $nb_items" 
        if [ $nb_items -eq 0 ]
        then
            echo "You lost!"
        fi
done