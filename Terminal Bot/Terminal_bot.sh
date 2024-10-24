#!/bin/bash

user=$(whoami)
date=$(date)
whereami=$(pwd)
hour=`date +%H`
kernel=$(uname -r)

function start() {

if [ $hour -lt 12 ]; then
    echo "Hello $user! Good Morning! I am a terminal 'bot' made by IzaacCoding36 to offer some funcionalities for you in a very quick way!"
elif [ $hour -le 16 ]; then
    echo "Hello $user! Good Afternoon! I am a terminal 'bot' made by IzaacCoding36 to offer some funcionalities for you in a very quick way!"
elif [ $hour -le 20 ]; then
    echo "Hello $user! Good Evening! I am a terminal 'bot' made by IzaacCoding36 to offer some funcionalities for you in a very quick way!"
else
    echo "Hello $user! Good Night! I am a terminal 'bot' made by IzaacCoding36 to offer some funcionalities for you in a very quick way!"
fi

sleep 2

echo ""
echo "Do you want a brief explanation of my funcionalities? (y/n)"
echo ""

read option

if [[ $option == "Yes" || $option == "yes" || $option == "y" || $option == "Y" ]]; then
  echo ""
  echo "Okay! So, actually I have 4 funcionalities: the Terminal RPG, the Checkup, the Password Generator and the File Encrypter/Decrypter."
  
  sleep 6
  
  echo ""
  echo "1: CHECKUP"
  echo ""
  echo "The Checkup initiates my funcionality that makes a brief checkup about a few things that some people like you usually want to know:"
  
  sleep 6
  
  echo ""
  echo "Websites: I can check if a website is up in the internet or if isn't working at the moment, if you want to check a website, write it in the 'websites.txt' file and I'll do the rest for you."
  
  sleep 10
  
  echo ""
  echo "Weather: I also check how the weather on your city is! If you want to check the weather in a specific city, write it in the 'cities.txt' file, just like the websites. And just to let you know, my results for the weather at some places aren't always correct. Don't blame me, I'm just trying to help you."
  
  sleep 10
  
  echo ""
  echo "The rest of the checkups I make are just normal things that you probably need, like the information about your username, what's your actual time and directory and that stuff."
  
  sleep 6
  
  echo ""
  echo "2: TERMINAL RPG"
  echo ""
  echo "The Terminal RPG is just a little game for you to play when you are bored, or even if you don't have internet, also, don't worry if you lose, that happens to everyone!"
  
  sleep 6
  
  echo ""
  echo "3: PASSWORD GENERATOR"
  echo ""
  echo "The password generator, as its name suggests, is a funcionality where I create a password for you to use somehow in a simple and fast way. And i can also encrypt that password for you, to make it way more secure and private."
  
  sleep 6
  
  echo ""
  echo "4: FILE ENCRYPTER/DECRYPTER"
  echo ""
  echo "In the File encrypter and decrypter funcionality you can encrypt any file that you want! For that, you must move your wanted file to the same repository as I am (right here: $whereami). And then you'll only need a password for that file and everything will be safe, right in your hands. The same works for the file decryption."
  
  sleep 10
  
  echo ""
  echo "NOTE: I am only able to encrypt/decrypt files in the (.gpg) format, so if you want to decrypt a file in other formats, you should use a specified program for that."
  
  sleep 10
  
  echo ""
  echo "SECURITY NOTE: I am just a scripted 'bot' that needs to be runned on your computer, anything you do with my code is of your property only. And if you lose any passwords you create, it is also your fault, don't blame me for beign rude or bad like this, like I said, I am scripted, so I can't recover anything without proper coding."
  
  sleep 15
  
  echo ""
  echo "Sorry for the boring text! But it is really important, ok?"
  
  sleep 3
  
  echo ""
  echo "That's it for now! Now let's head up to the important things. What do you want to do?"
  
  sleep 3

elif [[ $option == "No" || $option == "no" || $option == "no" || $option == "n" || $option == "N" ]]; then
  echo ""
  echo "Okay. What do you want to do?"
else
  sleep 2
  
  echo ""
  echo "You haven't chosen any of the avaible options. If you want to try again, type the option indicator (ex: (y) )"
  
  sleep 2
  
  echo ""
  start
fi

sleep 2

echo ""
echo "Avaible options:
  (1) - Checkup
  (2) - Terminal RPG
  (3) - Password Generator
  (4) - File Encrypter/Decrypter
  (5) - Nothing"
echo ""

read option

if [[ $option == "1" || $option == "Checkup" || $option == "checkup" || $option == "Check" || $option == "check" ]]; then
  echo ""
  echo "Loading Checkup..."
  
  sleep 5

  echo ""
  echo "Date: $date"

  sleep 2

  echo ""
  echo "You are currently logged in as $user and you are in the directory $whereami."

  sleep 2 
  
  echo ""
  echo "Checking websites..."

  sleep 2

  for x in $(cat websites.txt);
  do
    if ping -q -c 2 -W 1 $x > /dev/null; then
    echo ""
    echo "$x is up."
   else
    echo ""
    echo "$x is down."
    fi
  done

  sleep 2

  echo ""
  echo "Checking weather..."

  sleep 2

  for x in $(cat cities.txt);
  do
   weather=$(curl -s https://wttr.in/$x?format=3)
   echo ""
   echo "The weather for: $weather"
  done

  sleep 2

  echo ""
  echo "The system check will start in 5 seconds."

#DISCLAIMER: Consider this as a alert, idk how to correctly check ALL the system using shell-script, so if you are having problems with your PC then look for help, because this isn't really going to check your computer system. (I'm sorry for this.)

  sleep 1

  echo ""
  echo "Loading..."

  sleep 4

  echo ""
  echo "Checking system..."

  sleep 4

  echo ""
  echo "CPU Status: OK"
  
  sleep 2

  echo ""
  echo "Battery: OK"

  sleep 2

  echo ""
  echo "Graphic Card: OK"

  sleep 2

  echo ""
  echo "Hard Drive (HD): OK"

  sleep 2

  echo ""
  df -h | awk '$NF=="/"{printf "Hard Drive storage used: %d/%dGB (%s)\n", $3, $2, $5}'

  sleep 2

  echo ""
  echo "RAM: OK"

  sleep 2

  echo ""
  free -m | awk 'NR==2{printf "RAM memory used: %sMB (%.2f%%)\n", $3, $3*100/$2 }'

  sleep 2

  echo ""
  echo "Kernel Version: $kernel"

  sleep 2

  echo ""
  echo "Overall System Status: OK"

  sleep 4

  echo ""
  echo "All checkups have been made."
  
  exit 1
fi

if [[ $option == "2" || $option == "Terminal RPG" || $option == "terminal RPG" || $option == "RPG" || $option == "rpg" ]]; then
  echo ""
  echo "loading Terminal RPG..."
  sleep 3
  echo ""
  echo "Welcome to the Terminal RPG fellow $user! Please select your starting class:
(1) - Knight
(2) - Archer
(3) - Mage"
  echo ""
  
  read class

  case $class in

    1)
        type="Knight"
        weapon="Sword"
        hp=10
        attack=20
        ;;
    2)
        type="Archer"
        weapon="Bow"
        hp=30
        attack=6
        ;;
    3)
        type="Mage"
        weapon="Staff"
        hp=15
        attack=15
        ;;
  esac

  if [[ $type == "Knight" || $type == "Archer" || $type == "Mage" ]]; then
   echo ""
   echo "You have chosen the || $type || class. Your HP is $hp and your DMG is $attack."

  else
   echo ""
   echo "You haven't chosen any valid options, so you suddenly just decided to get away from this game..."

  sleep 2

   exit 1
  fi

  sleep 4

  echo ""
  echo "You hear a wild noise coming from your right, you then decide to go look where it came from."

  sleep 4

  #first beast battle

  echo ""
  echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1 (0/1)"
  echo ""
  
  read move

  beast=$(( $RANDOM % 2 ))

  if [[ $beast == $move || $move == "/kill" ]]; then
    echo ""
    echo "Beast ELIMINATED!! Congrats, fellow $user!"
  else
    echo ""
    echo "You Died."
    exit 1
  fi

  echo ""
  echo "You can see a blue light shining ahead of you. Do you want to look what's over there? (y/n)"
  echo ""
  
  read choice

  if [[ $choice == "y" || $choice == "yes" || $choice == "Y" || $choice == "Yes" ]]; then
    attack=$(( $attack + 15 ))
    echo ""
    echo "Wow! You found a || Shiny Magic Powered $weapon ||! + 15 DMG"
    sleep 4
    echo ""
    echo "Your Damage has been increased to $attack."
    sleep 4
  else
    echo ""
    echo "You decide to ignore it and return back to your adventure."
  fi

  sleep 4

  echo ""
  echo "You can see a very big tree fall far from you, you decide to see what's going on there."

  sleep 4

  echo ""
  echo "|| !! BOSS BATTLE !! ||"

  sleep 2

  if [[ $attack > 20 ]]; then
    hp=$(( $hp + 20 ))
    attack=$(( $attack + 5 ))
    beast=$(( $RANDOM % 6 ))
    echo ""
    echo "Your $weapon lightens you up and you get powerful. + 20 HP, + 5 DMG"
    sleep 4
    echo ""
    echo "Your life has increased to $hp."
    sleep 4
    echo ""
    echo "Your damage has increased to $attack."
    sleep 4
    echo ""
    echo "Get ready to fight and pick a number between 0-5 (0/5)"
    echo ""

  read move

  if [[ $beast == $move || $move == "/nuke" ]]; then
    echo ""
    echo "Boss ELIMINATED!! Congrats, fellow $user!"
    sleep 4
    echo ""
    echo "YOU WON!!!"
    exit 1
  elif [[ $beast != $move && $move != "/nuke" && $attack > 21 ]]; then
    echo ""
    echo "You Died."
    exit 1
  fi
  fi

  beast=$(( $RANDOM % 10 ))
  
  echo ""
  echo "Get ready to fight and pick a number between 0-9 (0/9)"

  read move

  if [[ $beast == $move || $move == "/nuke" ]]; then
    echo ""
    echo "Boss ELIMINATED!! Congrats, fellow $user!"
    sleep 4
    echo ""
    echo "YOU WON!!!"
    exit 1
  else
    echo ""
    echo "You Died."
    exit 1
  fi
fi

if [[ $option == "3" || $option == "Password Generator" || $option == "password generator" || $option == "Password" || $option == "password" ]]; then
    echo ""
    echo "Loading Password Generator..."
    sleep 3
    echo ""
    echo "Please select how large you want your password to be so I can create it. (0-100)"
    echo ""

    read length
    
    characters="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"
    password=$(head /dev/urandom | tr -dc "$characters" | head -c "$length")
    
    touch "password.txt"
    echo ""
    echo "Your password is: $password ||" > password.txt
    sleep 3
    echo ""
    cat password.txt
    sleep 3
    echo ""
    echo "Your password has been generated and added to a file named 'password.txt'."
    sleep 3
    echo ""
    echo "Do you want to encypt your password? Don't worry, I can decrypt it for you later. (y/n)"

    read choice

    if [[ $choice == "y" || $choice == "Y" || $choice == "Yes" || $choice == "yes" ]]; then
        echo ""
        echo "Okay! Security comes in first place, right?"
        sleep 3
        echo ""
        echo "WARNING: If a popup asking for a password appear on your screen, that's completely normal, that password will be used to decrypt your file. So, keep it safe, ok?"
        sleep 15
        echo ""
        echo "Encrypting password..."
        sleep 3

        file_to_encrypt="password.txt"
        gpg -c "$file_to_encrypt"

        sleep 3

        rm "password.txt"
        
        echo ""
        echo "Your password has been encrypted!"
        exit 1
    fi

    if [[ $choice == "n" || $choice == "N" || $choice == "no" || $choice == "No" ]]; then
        echo ""
        echo "Ok. If you need any help, you can count with me!"
        exit 1
    fi
fi

if [[ $option == "4" || $option == "File Encrypter/Decrypter" || $option == "Encrypter" || $option == "Decrypter" ]]; then
  echo ""
  echo "Loading file encrypter and decrypter..."
  sleep 3
  echo ""
  echo "Note: Unfortunately I can only encrypt or decrypt a file that is in this directory at the moment."
  sleep 3
  echo ""
  echo "Alright, do you want to encrypt or decrypt a file? (e/d)"
  echo ""

  read choice

  if [[ $choice == "e" || $choice == "E" || $choice == "encrypt" || $choice == "Encrypt" ]]; then
    echo ""
    echo "Great. Tell me the name of the file and the ending of it (example: name = 'image' ending = '.png')"
    echo ""

    read file

    echo ""
    echo "Okay, a popup may show up on your screen asking for you to create a password, keep it safe, because you'll need it to decrypt that file."
    sleep 15
    echo ""
    echo "Encrypting file..."
    sleep 3
    
    file_to_encrypt="$file"
    gpg -c "$file_to_encrypt"
    
    sleep 3
    
    rm "$file"

    echo ""
    echo "Your file has been encrypted!"
    exit 1
  fi

  if [[ $choice == "d" || $choice == "D" || $choice == "decrypt" || $choice == "Decrypt" ]]; then
    echo ""
    echo "Great. Tell me the name of the file and the ending of it (example: name = 'image' ending = '.png')"
    sleep 3
    echo ""
    echo "Note: you won't need to include the '.gpg' at the end of your encrypted file."
    echo ""

    read file

    echo ""
    echo "Okay, a popup may show up on your screen asking you for a password, that password is the one you entered before encrypting your file. If it doesn't show up, that's also okay, that also happens if your computer stored your password on it."
    sleep 15
    echo ""
    echo "Decrypting file..."

    encrypted_file="$file.gpg"
    gpg -d "$encrypted_file" > "$file"

    sleep 3

    rm "$file.gpg"

    echo ""
    echo "Your file has been decrypted!"
    exit 1
  fi
fi

if [[ $option == "5" || $option == "Nothing" || $option == "nothing" || $option == "None" || $option == "none" ]]; then
  echo ""
  echo "Ok. See you in the next time!"
  exit 1
fi
  
  echo ""
  echo "You haven't chosen any of the avaible options. If you want to try again, type the option indicator (ex: (1) )"
  sleep 2
  echo ""
  start
}

start
