#!/bin/bash

if [ "$1" == remove ]
then
	sudo rm /etc/rc0.d/K01stopVM
	sudo rm /etc/rc6.d/K01stopVM
	sudo rm /etc/init.d/K01stopVM
	
	exit
fi

sudo cp K01stopVM /etc/init.d/
sudo ln -s /etc/init.d/K01stopVM /etc/rc0.d/K01stopVM
sudo ln -s /etc/init.d/K01stopVM /etc/rc6.d/K01stopVM
