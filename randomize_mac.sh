#! /bin/bash

# have to add export INAME=interface-name
ifconfig | grep ether

sudo ifconfig $INAME down

sudo macchanger -r $INAME

sudo ifconfig $INAME up

ifconfig | grep ether

echo 'mac address randomized ' $(date) >> log.txt