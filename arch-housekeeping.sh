#! /bin/bash

##keeping the system clean

echo '#########################################################################'
echo 'Updating pacman database, Upgrading packages and Removing useless packages'
echo '#########################################################################'
sleep 2

sudo pacman -Syu --noconfirm

paru -Syu --noconfirm
echo '#########################################################################'
echo 'Done' 
echo 'Appending to history file'
echo '#########################################################################'
sleep 2

echo 'arch-housekeeping script ran on ' $(date) >> log.txt

echo '#########################################################################'
echo 'Done' 
echo '#########################################################################'  
