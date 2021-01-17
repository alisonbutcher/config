

#!/bin/bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo sh -c 'echo "deb [arch=amd64] http://apt.insync.io/ubuntu focal non-free contrib" >> /etc/apt/sources.list.d/insync.list'
sudo apt update
sudo apt install insync insync-nautilus -y