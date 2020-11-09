#!/bin/bash

echo "********************************************************"
echo "********************** Welcome to **********************"
echo " 
___________.__                _____                        
\__    ___/|  |__   ____     /     \ _____  ________ ____  
  |    |   |  |  \_/ __ \   /  \ /  \\__  \ \___   // __ \ 
  |    |   |   Y  \  ___/  /    Y    \/ __ \_/    /\  ___/ 
  |____|   |___|  /\___  > \____|__  (____  /_____ \\___  >
                \/     \/          \/     \/      \/    \/ 
"
echo "              ╔═════╣ North (n) ╠═════╗"
echo "              ║     ║           ║     ║"
echo "              ║     ║           ║     ║"   
echo "              ╩  ═══╝     ▲     ╚═══  ╩" 
echo "            West (w)   ◄  ♛  ►     East (e)"
echo "              ╦  ═══╗     ▼     ╔═══  ╦"
echo "              ║     ║           ║     ║"
echo "              ║     ║           ║     ║"
echo "              ╚═════╣ South (s) ╠═════╝"
echo "*****************************************************"
echo "*****************************************************"
echo ""
echo "You are lost inside a Maze 👾, try to escape.... or you will die 💩"
echo ""

game_running=true
room_number=2

while [ "$game_running" = true ]
do
    if [ $room_number -eq 1 ]
    then
        echo "There are 2 doors in your room: North (n) and East (e); where do you want to go?"
        read choice
        if [ "$choice" = "n" ]
        then 
            clear
            echo "> going North..."
            room_number=4
        elif [ "$choice" = "e" ]
        then
            clear
            echo "> going East..."
            room_number=2
        else
            echo "SORRY! THIS CHOICE DOESN'T EXIST!"
            echo "                  .-.
        .-""`""-.    |(@ @)
     _/`oOoOoOoOo`\_ \ \-/
    '.-=-=-=-=-=-=-.' \/ \
     `-=.=-.-=.=-'    \ /\
         ^  ^  ^       _H_ \ "
        fi
    elif [ $room_number -eq 2 ]
    then 
        echo "There are 3 doors in your room: North (n), West (w), and East (e),  where do you want to go?"
        read choice
        if [ "$choice" = "n" ]
        then
            clear
            echo "> going North..."
            room_number=5
        elif [ "$choice" = "w" ]
        then
            clear
            echo "> going West..."
            room_number=1
        elif [ "$choice" = "e" ]
        then 
            clear
            echo "> going to east..."
            room_number=3
        else
            echo "SORRY! THIS CHOICE DOESN'T EXIST!"
            echo "                  .-.
        .-""`""-.    |(@ @)
     _/`oOoOoOoOo`\_ \ \-/
    '.-=-=-=-=-=-=-.' \/ \
jgs   `-=.=-.-=.=-'    \ /\
         ^  ^  ^       _H_ \ "
        fi
    elif [ $room_number -eq 3 ]
    then
        echo "There are 2 doors in your room: North (n), West (w), where do you want to go?"
        read choice
        if [ "$choice" = "n" ]
        then
            clear
            echo "> going North..."
            room_number=6
        elif [ "$choice" = "w" ]
        then
            clear
            echo "> going West..."
            room_number=2
        else
            echo "SORRY! THIS CHOICE DOESN'T EXIST!"
            echo "                  .-.
        .-""`""-.    |(@ @)
     _/`oOoOoOoOo`\_ \ \-/
    '.-=-=-=-=-=-=-.' \/ \
jgs   `-=.=-.-=.=-'    \ /\
         ^  ^  ^       _H_ \ "
        fi
    elif [ $room_number -eq 4 ]
    then
        echo ">>>>>> It's a trap and you are DEAD :/"
        echo "    _,.
     ,;~'             '~;,
   ,;                     ;,
  ;                         ;
 ,'                         ',
,;                           ;,
; ;      .           .      ; ;
| ;   ______       ______   ; |
|  `/~"     ~" . "~     "~\'  |
|  ~  ,-~~~^~, | ,~^~~~-,  ~  |
 |   |        }:{        |   |
 |   l       / | \       !   |
 .~  (__,.--" .^. "--.,__)  ~.
 |     ---;' / | \ `;---     |
  \__.       \/^\/       .__/
   V| \                 / |V
    | |T~\___!___!___/~T| |
    | |`IIII_I_I_I_IIII'| |
    |  \,III I I I III,/  |
     \   `~~~~~~~~~~'    /
       \   .       .   /     
         \.    ^    ./
           ^~~~^~~~^  "
        game_running=false
    elif [ $room_number -eq 5 ]
    then
        echo "There is 1 door in your room: South (s), do you want to go?"
        read choice
        if [ "$choice" = "s" ]
        then
            clear
            echo "> going South..."
            room_number=2
        else
            echo "SORRY! THIS CHOICE DOESN'T EXIST!"
            echo "                  .-.
        .-""`""-.    |(@ @)
     _/`oOoOoOoOo`\_ \ \-/
    '.-=-=-=-=-=-=-.' \/ \
jgs   `-=.=-.-=.=-'    \ /\
         ^  ^  ^       _H_ \ "
        fi
    elif [ $room_number -eq 6 ]
    then
        echo ">>>>>>>>>>>> You found the EXIT... Congratulations :)"
        read choice
        game_running=false
    fi
done