#!/bin/bash


#######################
# Author: Udit Narayan Ray
# Date: 27th April, 2026
# Description: THis is script for checking the services and printing each services
# #####################



service=$(systemctl)

for s in ${service};
do
	echo "Service $s"
done


