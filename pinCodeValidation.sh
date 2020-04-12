#!/bin/bash -x
shopt -s extglob #turn on extended globbing

echo "Welcome To Pin Code Validation"
#PATTERN
PINCODE_PATTERN="^[0-9]{6}$"
PINCODE_SPACE_PATTERN="^([0-9]{3}[ ]?[0-9]{3})$"

#check given pincode validate or not
function checkPattern() {
	if [[ $1 =~ $2 ]];
	then
		echo "PinCode Is Valid"
	else
		echo "PinCode Invalid"
	fi
}

#read pincode from user
read -p "Enter PinCode:" pincode
checkPattern $pincode $PINCODE_PATTERN
#restrict the pincode from taking alphabet or special char at begin
pincode=A400088
checkPattern $pincode $PINCODE_PATTERN
#restrict the pincode from taking alphabet or special char at end
pincode=400088B
checkPattern $pincode $PINCODE_PATTERN
#space between pincode number after three digit
read -p "Enter PinCode:" pincode
checkPattern "$pincode" "$PINCODE_SPACE_PATTERN"

