#!/bin/bash

bash initMode.sh
count=0

i=0
while [ $i -lt 16 ]
do

  bash waitForButtonPress2.sh

  if [ $? -eq 0 ]
  then ((count++))
  fi

  echo $press_count
done

echo buzzer
