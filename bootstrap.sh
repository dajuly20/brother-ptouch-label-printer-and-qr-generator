
#!/bin/bash

PACKAGES="build-essential cmake gettext libgd-dev libusb-dev libusb-1.0-0-dev"

sudo apt update
sudo apt upgrade
echo "Installing Packages: $PACKAGES"
sudo apt install "$PACKAGES"

