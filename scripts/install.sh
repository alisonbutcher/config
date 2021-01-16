#!/bin/bash

# Copy dotfiles
./copy.sh

# Update Ubuntu and get standard repository programs
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install awscli
install chrome-gnome-shell
install curl
install dialog
install exfat-utils
install file
install git
install htop
install nmap
install openvpn
install tree
install wget
install python3 
install python3-venv 
install python3-pip
install openjdk-11-jdk

# Image processing
install gimp
install jpegoptim
install optipng

# Utilities
install insync
install insync-nautilus
install apt-transport-https 
install curl 
install gnupg

# Desktop
install gnome-tweaks
install chrome-gnome-shell
install gnome-extensions

# Terminal
install fonts-powerline
pip3 install powerline-shell

# KVM / Qemu
install qemu 
install qemu-kvm 
install libvirt-clients 
install libvirt-daemon-system 
install bridge-utils 
install virt-manager 
install dnsmasq
install uml-utilities
install dmg2img 
install libguestfs-tools

# Run all scripts in programs/
for f in programs/*.sh; do bash "$f" -H; done


# Set linux to use local time because windows
timedatectl set-local-rtc 1 --adjust-system-clock

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y

# Enable Libvirtd
sudo systemctl enable libvirtd.service
sudo systemctl enable virtlogd.service

sudo modprobe kvm
sudo reboot