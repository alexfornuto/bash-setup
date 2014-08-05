#!/bin/bash

echo -e "Configuring git variables... \n"
git config --global color.ui auto
git config --global user.name alexfornuto
git config --global user.email alex@fornuto.com

echo -e "Making .scripts folder, if not already there... \n"
mkdir -p ~/.scripts

echo -e "Adding user.sh to .scripts folder... \n"
cp scripts/user.sh ~/.scripts/user.sh

echo -e "Copying Screen config file into ~ ... \n"
cp configs/.screenrc ~/.screenrc

echo -e "making the .ssh dir, if not already there... \n"
mkdir -p ~/.ssh

echo -e "Adding the list of public keys from this repo into the authorized_keys file for this user... \n"
cat configs/authorized_keys >> ~/.ssh/authorized_keys

echo -e "Done! \n"
