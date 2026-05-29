#!/bin/bash


# Author : Udit Narayan Ray
# Date : 27th May, 2026
# Description : Checking AWS installation and its functionality



awscli_check(){
	# if command -v aws &> /dev/null
	if  which aws &> /dev/null 
	then
		echo "AWS CLI installed and it's version is $(aws --version)" 
	else
		echo "We need to install AWS CLI"
	fi
}

awscli_check

