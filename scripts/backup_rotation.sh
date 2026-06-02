#!/bin/bash


# Author : Udit Narayan Ray
# Date : 29th May, 2026
# Description : Backup of a directory using rotation technique

<< usage
This is multi line comment for providing method of backup

./backupscript <src dir path> <dest dir path>

usage

echo "Commnand line Argument numbers : '$#' and values are : "
for arg in $@
do
	echo $arg
done

read -p "Please Enter Source Directory : " src_dir
read -p "Please Enter Destination or Archving Directory : " dest_dir
read -p "Enter minutes i.e more than provided for which log should be archive : " archive_days
read -p "Enter the minutes of retention of log file i.e old file more than provided will be deleted : " retain_days

timestamp=$(date '+%Y%m%d%H%M%S')


create_backup(){
	#using ZIP
	#find ${src_dir} -type f -name '*.log' -mmin +${archive_days} -exec zip ${dest_dir}/${timestamp}.zip {} +
	#using TAR
	find ${src_dir} -type f -name '*.log' -mmin +${archive_days} -exec tar -czf ${dest_dir}/${timestamp}.tgz {} + 
}

process_retention(){
	find ${src_dir} -type f -mmin +${archive_days} -exec rm {} +
}

process_rotation(){
	#storing in arrays
	backups=($(ls -t ${dest_dir}/*.tgz))

	if [[ ${#backups[@]} -gt 5 ]]
	then
		echo "Performing Rotation in ${dest_dir} " 
		#Removing only file which are not 5 latest tar file

		older_backup=${backups[@]:5}
		for backup in ${older_backup}
		do
			rm -f ${backup}
		done
	fi

}

if [[ -d ${dest_dir} ]]
then
	create_backup
	echo "Creating Backup..."
	process_retention
else
	echo "Creating Archive Directory..."
	mkdir -p ${dest_dir}	
	create_backup
	echo "Creating Backup.."	
	process_retention
fi


process_rotation



