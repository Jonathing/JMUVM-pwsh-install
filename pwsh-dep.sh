#!/bin/bash

# Get current dir and go to Downloads
myDir=$(pwd)
cd ~/Downloads

# Download and registerthe Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Get libicu60
wget http://archive.ubuntu.com/ubuntu/pool/main/i/icu/libicu60_60.2-3ubuntu3.1_amd64.deb
sudo dpkg -i libicu60_60.2-3ubuntu3.1_amd64.deb
rm libicu60_60.2-3ubuntu3.1_amd64.deb

# Get libssl1.0.0
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.4_amd64.deb
sudo dpkg -i libssl1.0.0_1.0.2n-1ubuntu5.4_amd64.deb
rm libssl1.0.0_1.0.2n-1ubuntu5.4_amd64.deb

# Update the list of products
sudo apt-get update

# Enable the "universe" repositories
sudo add-apt-repository universe

# Get apt dependencies. Easy game.
sudo apt install liblttng-ust-ctl4 liblttng-ust0 liburcu6 openssl -y

# Install PowerShell
sudo apt-get install -y powershell

# Go back to original directory
cd $myDir
