#!/bin/bash

read -p "check for efivars" yn

case $yn in 
	yes ) echo ok, we will proceed;
ls /sys/firmware/efi/efivars;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

read -p "timedatectl status? (yes/no)" yn
case $yn in 
	yes ) echo ok, we will proceed;
timedatectl status;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac
echo doing stuff...
