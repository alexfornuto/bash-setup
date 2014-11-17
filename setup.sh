#!/bin/bash

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi


echo -e "Please specify the hostname for this machine: "
read hname


echo -e "adding hostname to /etc/hostname... \n"
echo "$hname" > /etc/hostname
hostname -F /etc/hostname
sleep 0.5s

echo -e "Configuring git variables... \n"
git config --global color.ui auto
git config --global user.name alexfornuto
git config --global user.email alex@fornuto.com
sleep .5s

echo -e "Making .scripts folder, if not already there... \n"
mkdir -p ~/.scripts
sleep 1.5s

echo -e "Adding user.sh to .scripts folder... \n"
cp scripts/user.sh ~/.scripts/user.sh
sleep .5s

echo -e "Copying Screen config file into ~ ... \n"
cp configs/.screenrc ~/.screenrc
sleep .5s

echo -e "making the .ssh dir, if not already there... \n"
mkdir -p ~/.ssh
sleep .5s

echo -e "Adding the list of public keys from this repo into the authorized_keys file for this user... \n"
cat configs/authorized_keys >> ~/.ssh/authorized_keys
sleep 1.5s

echo -e "Adding aliases and colors into .bashrc... \n"
cat configs/.bashrc >> ~/.bashrc
sleep .5s

echo -e "sourcing bash profile... \n"
source ~/.bashrc
sleep .5s

echo -e "Done! \n"
