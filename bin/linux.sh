#!/bin/bash

chmod +x ~/.dotfiles/bin/linux.sh #executable permissions

if[uname -eq Linux] #if statement to check that the uname is linux
then
	echo uname #echoes the username if it matches
else
	echo "Error! OS Does not match" #spits and error if it doesn't
fi

if[! -d .TRASH] #checking if there is not a trash directory
then
	mkdir .TRASH #mmaking trash directory if it doesn't exist
fi

if[-e ~/.vimrc] #checking if there's a vimrc file in the home directory
then
	mv .vimrc .bup_vimrc #if there is, rename .vimrc to new name
then
	echo ".vimrc renamed to .bup_vimrc" >> linuxsetup.log #echo the statement into the linux set up log
fi

cat ~./.dotfiles/etc/vimrc &> ~/.vimrc #cat the contents into the vimrc file

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #put the contents of this command in the bash rc file
