#!/bin/bash

chmod +x ~/.dotfiles/bin/cleanup.sh #executable permission

rm -r ~/.vimrc #removes the vimrc file from the home directory
sed 's/source ~\/.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc #replaces the command with nothing
rm -r ~/.TRASH #removes the trash directory
