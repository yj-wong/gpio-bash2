#!/bin/bash

gpio mode 5 up

button=1

while [ $button -eq 1 ]
do
  button=$(gpio read 5)

  while [ $button -eq 0 ]
  do
    button=$(gpio read 5)

    if [ $button -eq 1 ]
    then
        exit 0
    fi
  done
done
