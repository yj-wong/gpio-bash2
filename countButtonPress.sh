#!/bin/bash

bash initMode.sh
count=0

i=0
while [ $i -lt 16 ]
do

  bash waitForButtonPress.sh

  if [ $? -eq 0 ]
  then ((count++))
  fi

  echo $count
	bash setbits.sh $count

	((i++))
done

bash initMode.sh

echo buzzer
gpio mode 6 out
gpio write 6 1
sleep 1
gpio write 6 0
