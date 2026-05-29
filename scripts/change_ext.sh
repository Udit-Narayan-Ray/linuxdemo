#!/bin/bash


# Author : Udit Narayan Ray
# Date : 27th May, 2026
# Description : Changing the file extension of file having same EXTENSION in naming format


read -p "Please provide the EXTENSION of file whose extension needed to be changed : " sEXT
read -p "Please provide the final EXTENSION to be changed into : " dEXT

for file in *.$sEXT
do
	echo "$file"
	if [[ -f "$file" ]]
	then
		# -- operator prevents errors if a filename starts with a hyphen.
		echo " File '$file' is changing to '${file%.$sEXT}.${dEXT}'"
		mv ${file} "${file%.$sEXT}.${dEXT}"
	fi
done


