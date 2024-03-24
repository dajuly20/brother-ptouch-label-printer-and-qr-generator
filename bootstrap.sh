#!/bin/bash

sudo apt update
sudo apt upgrade
echo "Installing Packages: $PACKAGES"
sudo apt install build-essential cmake gettext libgd-dev libusb-dev libusb-1.0-0-dev git autoconf automake cmake autotools-dev
cd ~ 
url="https://github.com/philpem/printer-driver-ptouch"
folder="~/printer-driver-ptouch"
if ! git clone "${url}" "${folder}" 2>/dev/null && [ -d "${folder}" ] ; then
     git pull "${folder}" 
     echo "Repo was there already. Pulled to update."
fi


echo ''
echo ' **************************************************************'
echo ' *                                                            *'
echo " *    "$url"        *"
echo ' *    PLEAS FIRST FOLLOW THE INSTRUCTIONS HERE                *'
echo ' *    -->  ~/printer-driver-ptouch                            *'
echo ' *    (at least I already cloned it for you ;-))              *'
echo ' *                                                            *'
echo ' *************************************************************'
echo "So I couldn't find reason in automating this step. " 

