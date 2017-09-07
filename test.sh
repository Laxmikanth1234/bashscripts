#!/bin/bash

read -p 'Package1: ' package

test=$(dpkg --list | grep $package)

while [ $? = 0 ]
then
echo "please enter another package name"
else read -p 'Package1: ' package
fi 
