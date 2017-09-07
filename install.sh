#!/bin/bash

read -p 'Package1: ' package1

test=$(dpkg -s $package1 | grep Status)

if [ $? != 0 ]
then
   outout=$(lsb_release -a)
   if [ $? = 0 ]
   then
   sudo apt-get install $package1
   else
   yum install package1 -y
   fi
else
  echo "package already installed"
fi

