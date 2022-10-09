#!/bin/bash
###########
#Librewolf#
###########
distro=$(if echo " bullseye focal impish jammy uma una " | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)

wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

sudo apt-get update
sudo apt-get install librewolf -y
###########
#Librewolf# End
###########

############
#Terminator#
############
sudo apt-get install terminator -y
############
#Terminator# End
############

###########
#KeepassXC#
###########
sudo apt-get install keepassxc -y
###########
#KeepassXC# End
###########

###########
#Cuda Text#
###########
echo 'deb [trusted=yes] https://apt.fury.io/cudatext/ /' | sudo tee -a /etc/apt/sources.list.d/cudatext.list

sudo apt update

sudo apt install cudatext -y
###########
#Cuda Text# End
###########

#############
#Tor Browser#
#############
sudo add-apt-repository universe && sudo apt-get update
sudo apt-get install torbrowser-launcher -y
#############
#Tor Browser# End
#############

###########
#Kleopatra#
###########
sudo apt-get update
sudo apt-get install kleopatra -y
###########
#Kleopatra# End
###########
######
#Wine#
######
#sudo dpkg --add-architecture i386 
#sudo wget -nc -O /usr/share/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
#sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
#sudo apt-get install wine -y
######
#Wine# End
######

###########
#Vs Codium#
###########
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
| gpg --dearmor \
| sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
   | sudo tee /etc/apt/sources.list.d/vscodium.list

    sudo apt update 
    sudo apt-get install codium -y

###########
#Vs Codium# End
###########

##########v
#Neofetch#
##########
sudo apt-get install neofetch -y
##########
#Neofetch# End
##########

#####
#Neovim#
#####
sudo apt-get install neovim -y 
mkdir ~/.config/nvim
mv init.vim   ~/.config/nvim
#####
#Neovim# End
#####

######
#Htop#
######
sudo apt-get install htop -y
######
#Htop# End
###### 

 mv ./.vimrc  ~/
 rm ./.gitconfig 
clear 
echo "You Have Successfully Installed My Suite Of Apps"

