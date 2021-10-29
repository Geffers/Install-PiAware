#!/bin/bash
# Add flightaware repository
# update and upgrade system
# Install flightaware and dump1090 to Buster Lite

# First add Flightaware repository
echo "First we get the flightaware repository then we add it to the apt system"
wget https://flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_6.1_all.deb
sleep 5s
sudo dpkg -i piaware-repository_6.1_all.deb
sleep 15s
clear
echo "Now we will update and upgrade the system"
sleep 5s
echo "  "
echo "This may take a wee while depending on how recent Pi Organisation updated their image"
sleep 20s

sudo apt-get update -y
sleep 5s
sudo apt-get upgrade -y
sleep 5s
clear
echo "now to install PiAware"
echo 15s
sudo apt-get install piaware -y
echo "  "
echo "PiAware installed"
sleep 15s
clear
echo "Now we install dump1090"
sleep 15s
sudo apt-get install dump1090-fa -y
echo "  "
sleep 5s
clear
echo"  "
echo "  "
echo "All done"
echo "  "
echo "To use a previous account manually edit the /etc/piaware.conf file"
echo "  "
echo "On the last free line enter feeder-id ********-****-****-****-************"
sleep 1s
echo "You can open another terminal to do this"



# sudo reboot

