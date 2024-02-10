#!/bin/bash

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Hello $user! I am a terminal 'bot' made by IzaacCoding36 to offer some funcionalities for you in a very quick way!"
echo ""

sleep 2

echo "Do you want a brief explanation of my funcionalities? (y/n)"
echo ""

read option

if [[ $option = "Yes" || $option = "yes" || $option = "y" || $option = "Y" ]]; then
  echo ""
  echo "Okay! So, actually I only have two funcionalities: the Terminal RPG and the Checkup."
  sleep 6
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
  echo "The Terminal RPG is just a little game for you to play when you are bored, or even if you don't have internet, also, don't worry if you lose, that happens to everyone!"
  sleep 6 
  echo ""
  echo "That's it for now! Now let's head up to the important things. What do you want to do?"
  sleep 3
fi

if [[ $option = "No" || $option = "no" || $option = "no" || $option = "n" || $option = "N" ]]; then
  echo ""
  echo "Okay. What do you want to do?"
fi

sleep 2

echo ""
echo "Avaible options:
  (1) - Checkup
  (2) - Terminal RPG
  (3) - Nothing"
echo ""

read option

if [[ $option = "1" || $option = "Checkup" || $option = "checkup" || $option = "Check" || $option = "check" ]]; then
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

#DISCLAIMER: Consider this as a warning, idk how to actually check the system using shell-script, so if you are having problems with your PC then look for help, because this isn't really going to check your computer system. (I'm sorry for this.)

  sleep 1

  echo ""
  echo "Loading..."

  sleep 4

  echo ""
  echo "Checking system..."

  sleep 4

  echo ""
  echo "CPU Status: Operational (OK) | Battery: OK | Graphic Card: OK | Hard Drive (HD): OK | RAM: OK | Overall System Status: OK"

  sleep 4

  echo ""
  echo "All checkups have been made."
  
  exit 1
fi

if [[ $option = "2" || $option = "Terminal RPG" || $option = "terminal RPG" || $option = "RPG" || $option = "rpg" ]]; then
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

  echo ""
  echo "You have chosen the $type class. Your HP is $hp and your DMG is $attack."

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

  if [[ $beast == $move || $move = "/kill" ]]; then
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

  if [[ $choice == "y" || $choice == "yes" ]]; then
    attack=$(( $attack + 15 ))
    echo ""
    echo "Wow! You found a Shiny Magic Powered $weapon! + 15 DMG"
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

if [[ $option = "3" || $option = "Nothing" || $option = "nothing" || $option = "None" || $option = "none" ]]; then
  echo ""
  echo "Ok. See you in the next time!"
  exit 1
fi
  
  echo ""
  echo "You haven't chosen any of the avaible options. If you want to try again, type the option indicator (ex: (1) )"
  exit 1