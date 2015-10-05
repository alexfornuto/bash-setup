bash-setup
==========

Configurations and Scripts I use on new machines. This is for personal use, but feel free to copy it if you like some of this automation. If you do, be sure to remove my public keys from your branch, and edit the Git configuration commands.

This repo should be pulled by running the [first](https://gist.github.com/alexfornuto/228fe6e1280648b37534) script from gist. You can do this in one line:

```
curl -s https://gist.githubusercontent.com/alexfornuto/228fe6e1280648b37534/raw/69c42f78ab145a742a1e672d6a3e1c7da34a502d/first.sh | bash
```

The full contents of that script are below:

```
#!/bin/bash

echo -e "updating the timezone... \n"
sudo cp /usr/share/zoneinfo/America/New_York /etc/localtime

sleep 1

echo -e "Updating, upgrading, installing packages... \n"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git ruby rake

sleep 1

echo -e "Configuring git variables... \n"
git config --global color.ui auto
git config --global user.name alexfornuto
git config --global user.email alex@fornuto.com

sleep 1

echo -e "cloning bash-setup... \n"
git clone https://github.com/alexfornuto/bash-setup.git
```

The CentOS version: https://gist.github.com/alexfornuto/b61eb6301bfa5d4c6543

```
pretty much the same thing, but s/apt-get/yum/g
```
