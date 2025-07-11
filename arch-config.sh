#!/bin/sh

# TODO
# Ensure this is run as root
# Add failure modes
# Make some actions silent 

GIT_REMOTE='https://github.com/ColinAF'
CONFIG_DIR='.myConfigs'

###############################################################################
# Arch config
echo "Running Colin's Arch Config Script" 
# Configure the system
# Refresh keyring 

# Update the system   
pacman -Syu --noconfirm

# Install all the programs I like 
# Add in pipewire, tmux, ardour, vimb, firerox
pacman -S --noconfirm git make gcc binutils vim nvim htop neofetch ranger mutt newsboat sxiv mupdf xorg-xinit xorg-server feh

# Add in libs for dwm / dwmbar

###############################################################################
# Make the home directory (Option to install from one of my backups?)
echo "Creating a Home directory"
cd $HOME
mkdir $CONFIG_DIR
cd $CONFIG_DIR


###############################################################################
# Configure my PATH?


###############################################################################
# Setup backups 


###############################################################################
# Setup Password manager and security tools 


###############################################################################
# Dotfiles config
echo "Installing my dotfiles"
REPO="$GIT_REMOTE/dotfiles.git"
git clone $REPO "$HOME/$CONFIG_DIR/dotfiles"

cd $HOME/.myConfigs/dotfiles
./install 

cd $HOME

###############################################################################
# Desktop config
echo "Building the Desktop"

git clone "$GIT_REMOTE/dwm.git" "$HOME/$CONFIG_DIR/desktop/dwm"
cd "$HOME/$CONFIG_DIR/desktop/dwm"
make clean
make install

git clone "$GIT_REMOTE/st.git" "$HOME/$CONFIG_DIR/desktop/st"

cd "$HOME/$CONFIG_DIR/desktop/st"
make clean
make install

###############################################################################
# Uninstall All Configs

