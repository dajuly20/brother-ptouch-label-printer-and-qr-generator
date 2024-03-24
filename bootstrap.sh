
#!/bin/bash

PACKAGES="build-essential cmake gettext libgd-dev libusb-dev libusb-1.0-0-dev git"

sudo apt update
sudo apt upgrade
echo "Installing Packages: $PACKAGES"
sudo apt install "$PACKAGES"

cd ~ 
git clone https://github.com/philpem/printer-driver-ptouch 
cd -
echo ""
echo "**************************************************************
echo "*                                                            *
echo "*    https://github.com/philpem/printer-driver-ptouch        *
echo "*    PLEAS FIRST FOLLOW THE INSTRUCTIONS HERE"               *
echo "*    -->  ~/printer-driver-ptouch                            *
echo "*    (at least I already cloned it for you ;-))              *
echo "*                                                            *
echo "*************************************************************"
echo "So I couldn't find reason in automating this step. " 