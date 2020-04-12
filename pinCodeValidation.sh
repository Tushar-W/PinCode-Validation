#!/bin/bash -x
shopt -s extglob #turn on extended globbing

echo "Welcome To Pin Code Validation"
#PATTERN
PINCODE_PATTERN="^[0-9]{6}$"

#check given pincode validate or not
function checkPattern() {
	if [[ $pincode =~ $PINCODE_PATTERN ]];
	then
		echo "PinCode Is Valid"
	else
		echo "PinCode Invalid"
	fi
}

#read pincode from user
read -p "Enter PinCode:" pincode
checkPattern
#restrict the pincode from taking alphabet or special char at begin
read -p "Enter PinCode:" pincode
checkPattern
#restrict the pincode from taking alphabet or special char at end
read -p "Enter PinCode:" pincode
checkPattern

