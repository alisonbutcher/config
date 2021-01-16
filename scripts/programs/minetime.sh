#!/bin/bash
echo "Installing MineTime"
wget -O ~/MineTime.deb "https://europe-west1-minetime-backend.cloudfunctions.net/download/linux-deb"
sudo apt install ~/MineTime.deb -y
rm ~/MineTime.deb




