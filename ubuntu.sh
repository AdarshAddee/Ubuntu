#!/bin/bash

rd="\e[1;31m"
cy="\e[1;36m"


banner(){
echo -e "${cy}\n\n    ------------------------------------------"
echo -e "${rd}   |                  UBUNTU                  |"
echo -e "${cy}    ------------------------------------------\n\n"

}

help(){
echo -e "\n\e[0m   -h          - help"
echo "   -u          - update or install packages"
echo "   -i          - install UBUNTU"
echo -e "   -l          - login in UBUNTU\n"
}

social(){
echo -e "${cy}       -----------------------------------"
echo -e "${rd}      |   YouTube    |    Adarsh Addee    |"
echo -e "${cy}       -----------------------------------"
echo -e "${rd}      |   YouTube    |    Mr Idealhat     |"
echo -e "${cy}       -----------------------------------\n\n"
}

start(){

clear
banner
echo -e "${cy}Hit ${rd}ENTER${cy} to continue ......."
read
clear
}

if [ $1 == "-u" ];then
    clear; banner; echo -e "${cy}Installing necessary packages .......\n"
    apt update && apt upgrade -y && apt install proot-distro -y
    clear; banner; social; echo -e "${cy}Sucessfully Installed.\n\n${rd}Type ${cy}./ubuntu -i${rd} to launch the script\n\n"

elif [ $1 == "-i" ];then
    clear; start; banner; social; proot-distro install ubuntu; clear; banner; social; echo -e "${rd}Type ${cy}./ubuntu -l ${rd}to login in ubuntu";

elif [ $1 == "-r" ];then
    proot-distro remove ubuntu; clear; banner; social; echo -e "${rd}Sucessfully uninstalled"

elif [ $1 == "-l" ];then
    clear; banner; proot-distro login ubuntu

elif [ $1 == "-h" ];then
    banner; help

else
    clear; echo -e "Invalid Operation"; help

fi


if [ $? != 0 ];then
    clear; banner; social; help; echo -e "${rd}Getting error. Please Contact Mr Idealhat"
fi
