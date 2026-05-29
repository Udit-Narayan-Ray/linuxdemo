#!/bin/bash



#######################################################
#
#   Author : Udit Narayan Ray
#
#   Date: 8th May, 2026
#
#   Description : This script to find files created before 5 hr either remove them or create archive and compressed them
#######################################################

find . -name "*.*" -type f \( -mmin -300 -o -mtime -5 -o -atime -5 -o -cmin -300 \) | tar -czvf before5hrfiles.tar.gz --files-from -


