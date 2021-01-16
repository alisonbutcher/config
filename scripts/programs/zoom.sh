#!/bin/bash

wget -O ~/zoom.deb "https://zoom.us/client/latest/zoom_amd64.deb"
sudo apt install ~/zoom.deb -y
rm ~/zoom.deb