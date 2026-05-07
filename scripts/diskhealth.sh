#!/bin/bash



##########################################
# Author : Udit Narayan Ray
#
# Date : 7th May, 2026
#
# Description: This script check for the health of disk
#
##########################################


THRESHOLD=80

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "${USAGE}" -lt "${THRESHOLD}" ]; then

	echo "Disk usage is within "${THRESHOLD}" with utilization of "${USAGE}" %"
else
	echo "Disk is occoupied and used above "${THRESHOLD}" % and reached utilization of "${USAGE}" %"
fi

