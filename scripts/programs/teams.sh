#!/bin/bash

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'
sudo apt update
sudo apt install teams -y

# wget -O ~/teams.deb "https://go.microsoft.com/fwlink/p/?LinkID=2112886&clcid=0x409&culture=en-us&country=US"
# sudo apt install ~/teams.deb -y
# rm ~/teams.deb
