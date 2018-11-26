#!/bin/bash

#Comment the line below to enable echo.
echo() { :; }

n=10
gpio mode $n up

button=1

while [ $button -eq 1 ]
do
	echo button is $button
  button=$(gpio read $n)

  while [ $button -eq 0 ]
  do
		echo button is $button
    button=$(gpio read $n)

    if [ $button -eq 1 ]
    then
				echo "exit"
        exit 0
    fi
  done
done
