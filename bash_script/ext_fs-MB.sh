#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <LV Path> <Space to Extend in MB>"
    exit 1
fi

LV_PATH=$1
REQUIRED_SPACE=$2

VG_NAME=$(echo $LV_PATH | cut -d'-' -f1)

AVAILABLE_SPACE=$(sudo vgs --noheadings --units m -o vg_free $VG_NAME | awk '{print int($1)}')

if (( AVAILABLE_SPACE < REQUIRED_SPACE )); then
    echo "Not enough space in the volume group. Available space is ${AVAILABLE_SPACE}MB."
    exit 1
fi

sudo lvextend -L +${REQUIRED_SPACE}M $LV_PATH

sudo xfs_growfs $LV_PATH

echo "The logical volume $LV_PATH has been extended by ${REQUIRED_SPACE}MB."
