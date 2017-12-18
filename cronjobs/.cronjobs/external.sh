#!/usr/bin/env sh
echo "-------------- **** Starting External Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .externalbackup`
touch $TEMP_FILE

rsync --progress -a -r /mnt/data/ /mnt/external/Data/

rm $TEMP_FILE

echo "External Backup Successful: $(date)"

