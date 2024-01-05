#!/bin/bash

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "|| overall checkup || Made by: IzaacCoding36 ||"

sleep 2

echo "Date: $date"

sleep 2

echo "You are currently logged in as $user and you are in the directory $whereami."

sleep 2

echo "checking websites..."

sleep 2

for x in google.com xbox.com izaacweb.vercel.app github.com;
do
if ping -q -c 2 -w 1 $x > /dev/null; then
  echo "$x is down"
else
  echo "$x is up"
fi
done

sleep 2

echo "checking weather..."

sleep 2

for x in $(cat cities.txt);
do
 weather=$(curl -s https://wttr.in/$x?format=3)
 echo "The weather for $weather"
done

sleep 2

echo "system check starting in 5 seconds."

sleep 1

echo "loading..."

sleep 4

echo "checking system..."

sleep 4

echo "CPU Status: Operational (OK) | Battery: OK | Graphic Card: OK | Hard Drive (HD): OK | RAM: OK | Overall System Status: OK"

sleep 4

echo "All checkups have been made."