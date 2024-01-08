#!/bin/bash

user=$(whoami)

echo "Welcome $user. Please select your starting class:
(1) - Knight
(2) - Archer
(3) - Mage"

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

echo "You have chosen the $type class. Your HP is $hp and your DMG is $attack."

sleep 4

echo "You hear a wild noise coming from your right, you then decide to go look where it came from."

sleep 4

#first beast battle

echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1 (0/1)"

read move

beast=$(( $RANDOM % 2 ))

if [[ $beast == $move || $move = "/kill" ]]; then
    echo "Beast ELIMINATED!! Congrats, fellow $user!"
else
    echo "You Died."
    exit 1
fi

echo "You can see a blue light shining ahead of you. Do you want to look what's over there? (y/n)"

read choice

if [[ $choice == "y" || $choice == "yes" ]]; then
    attack=$(( $attack + 15 ))
    echo "Wow! You found a Shiny Magic Powered $weapon! + 15 DMG"
    sleep 4
    echo "Your Damage has been increased to $attack."
    sleep 4
else
    echo "You decide to ignore it and return back to your adventure."
fi

sleep 4

echo "You can see a very big tree fall far from you, you decide to see what's going on there."

sleep 4

echo "|| !! BOSS BATTLE !! ||"

if [[ $attack > 20 ]]; then
    hp=$(( $hp + 20 ))
    attack=$(( $attack + 5 ))
    beast=$(( $RANDOM % 6 ))
    echo "Your $weapon lightens you up and you get powerful. + 20 HP, + 5 DMG"
    sleep 4
    echo "Your life has increased to $hp."
    sleep 4
    echo "Your damage has increased to $attack"
    sleep 4
    echo "Get ready to fight and pick a number between 0-5 (0/5)"

read move

if [[ $beast == $move || $move == "/nuke" ]]; then
    echo "Boss ELIMINATED!! Congrats, fellow $user!"
    sleep 4
    echo "YOU WON!!!"
    exit 1
elif [[ $beast != $move && $move != "/nuke" && $attack > 21 ]]; then
    echo "You Died."
    exit 1
fi
fi

beast=$(( $RANDOM % 10 ))

echo "Get ready to fight and pick a number between 0-9 (0/9)"

read move

if [[ $beast == $move || $move == "/nuke" ]]; then
    echo "Boss ELIMINATED!! Congrats, fellow $user!"
    sleep 4
    echo "YOU WON!!!"
else
    echo "You Died."
fi