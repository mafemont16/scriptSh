#!/bin/bash

echo "********************************************************"
echo "********************** Welcome to **********************"
echo "___________.__                _____                     "   
echo "\__    ___/|  |__   ____     /     \ _____  ________ ____ " 
echo "  |    |   |  |  \_/ __ \   /  \ /  \\__  \ \___   // __ \ "
echo "  |    |   |   Y  \  ___/  /    Y    \/ __ \_/    /\  ___/ "
echo "  |____|   |___|  /\___  > \____|__  (____  /_____ \\___  >"
echo "                \/     \/          \/     \/      \/    \/ "
echo "********************************************************"
echo "********************************************************"
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
echo "********************************************************"                       
echo "                                     _|  |_ "
echo "                                   _|      |_"
echo "                                  |  _    _  |"
echo "                                  | |_|  |_| |"
echo "                               _  |  _    _  |  _"
echo "                              |_|_|_| |__| |_|_|_|"
echo "                                |_|_        _|_|"
echo "                                  |_|      |_|"
echo "********************************************************"  
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
echo "********************************************************"                       
echo "                                     _|  |_ "
echo "                                   _|      |_"
echo "                                  |  _    _  |"
echo "                                  | |_|  |_| |"
echo "                               _  |  _    _  |  _"
echo "                              |_|_|_| |__| |_|_|_|"
echo "                                |_|_        _|_|"
echo "                                  |_|      |_|"
echo "********************************************************"  
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
echo "********************************************************"                       
echo "                                     _|  |_ "
echo "                                   _|      |_"
echo "                                  |  _    _  |"
echo "                                  | |_|  |_| |"
echo "                               _  |  _    _  |  _"
echo "                              |_|_|_| |__| |_|_|_|"
echo "                                |_|_        _|_|"
echo "                                  |_|      |_|"
echo "********************************************************"  
        fi
    elif [ $room_number -eq 4 ]
    then
        echo ">>>>>> It's a trap and you are DEAD :/"
echo "********************************************************"                       
        echo "  _ _ _ _ _,.      "
echo "        ;'            ';"
echo "    ;                    ;"
echo "  ;                        ;"
echo " '                          ' "
echo ",;                           ;"
echo " ; ;      .           .     ;;"
echo " | ;   ______       ______  ;|"
echo " |        |           |      |"
echo " |    ,-~~~^~, | ,~^~~~-,    |"
echo " |   |        }:{        |   |"
echo " |   l       / |        !    |"
echo " .~  (__,.-- .^. --.,__)  ~. |"
echo " |     --- / | \ ;---        |"
echo "  \__.       \/^\/       .__/"
echo "   V| \                 / |V"
echo "   | |T~\___!___!___/~T| |"
echo "   / | |IIII_I_I_I_IIII| |"
echo "    /|  /\III I I I III,/|"
echo "     \   ~~~~~~~~~~     / "
echo "       \   .       .   /  "
echo "         \.    ^    ./"
echo "           ^~~~^~~~^  "
echo "********************************************************"                       
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
echo "********************************************************"                       
echo "                                     _|  |_ "
echo "                                   _|      |_"
echo "                                  |  _    _  |"
echo "                                  | |_|  |_| |"
echo "                               _  |  _    _  |  _"
echo "                              |_|_|_| |__| |_|_|_|"
echo "                                |_|_        _|_|"
echo "                                  |_|      |_|"
echo "********************************************************"                       
        fi
    elif [ $room_number -eq 6 ]
    then
        echo ">>>>>>>>>>>> You found the EXIT... Congratulations :)"
        read choice
        game_running=false
    fi
done