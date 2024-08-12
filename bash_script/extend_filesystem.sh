#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <LV Path> <Space to Extend in GB>"
    exit 1
fi

LV_PATH=$1
REQUIRED_SPACE=$2

# Extract the volume group from the LV path
VG_NAME=$(echo $LV_PATH | cut -d'-' -f1)

# Check if there is enough space in the volume group
AVAILABLE_SPACE=$(sudo vgs --noheadings --units g -o vg_free $VG_NAME | awk '{print int($1)}')

if (( AVAILABLE_SPACE < REQUIRED_SPACE )); then
    echo "Not enough space in the volume group. Available space is ${AVAILABLE_SPACE}GB."
    exit 1
fi

# Extend the logical volume
sudo lvextend -L +${REQUIRED_SPACE}G $LV_PATH

# Resize the filesystem
sudo xfs_growfs $LV_PATH

echo "The logical volume $LV_PATH has been extended by ${REQUIRED_SPACE}GB."
