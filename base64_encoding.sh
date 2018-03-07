#!/bin/bash
#This script base64 encode a userId and UserPwd. 

#Read and cCreate a variable to hold userInput
read -p "Enter Your userName: " userName

# Check if userName is empty
if [ -z ${userName} ]; then
    echo -e "\n You must enter a userName"
    exit 1
else 
   read -s -p  "Enter Your userPassword: " userPassword

   # Check if userPassword is empty
   if [ -z ${userPassword} ]; then
      echo -e "\n You must enter a userName"
      exit 1
   fi
fi


#echo -e "\n $userName\n"
#echo -e "\n $userPassword\n"

# Base64 encode apmUserName and apmUserpassword 
echo -e "\nbase64_Encoded_String: "
echo -n "$userName:$userPassword" | base64 -w 0 
echo -e  "\n"


