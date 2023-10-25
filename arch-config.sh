#!/bin/sh

# TODO
# Break each section into its own script 

###############################################################################
# Arch config
echo "Running Colin's Arch Config Script" 
# Configure the system
# Refresh keyring   
# Install all the programs I like 

###############################################################################
# Make the home directory (Opiton to install from one of my backups?)
echo "Creating a Home directory"
cd $HOME
mkdir .myConfigs
cd .myConfigs



###############################################################################
# Configure my PATH?


###############################################################################
# Setup backups 


###############################################################################
# Dotfiles config
echo "Installing my dotfiles"
git clone git@github.com:ColinAF/dotfiles.git $HOME/.myConfigs
./.myConfigs/dotfiles/install




###############################################################################
# Desktop config



###############################################################################
# Clone the repos 
# git clone git@github.com:ColinAF/dwm.git
# git clone git@github.com:ColinAF/st.git
