#!/usr/bin/env sh

echo "-------------- **** Starting Workspace Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .workspacebackup`
touch $TEMP_FILE

rsync --progress -a -r /home/max/workspace/ /mnt/data/Linux/workspace
rsync --progress -a -r /mnt/data/ /mnt/backup/

rm $TEMP_FILE

echo "-------------- **** Starting Configs Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .configsbackup`
touch $TEMP_FILE

rsync --progress -a -r /home/max/configs/ /mnt/data/Linux/configs

rm $TEMP_FILE

echo "-------------- **** Starting General Folders Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .generalbackup`
touch $TEMP_FILE

rsync --progress -a -r /home/max/Books /mnt/data/Linux
rsync --progress -a -r /home/max/Documents /mnt/data/Linux
rsync --progress -a -r /home/max/Pictures /mnt/data/Linux


rm $TEMP_FILE

echo "-------------- **** Starting Music Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .musicbackup`
touch $TEMP_FILE

rsync --progress -a -r /home/max/Music /mnt/data/Linux

rm $TEMP_FILE

echo "Internal Backup Successful: $(date)"
rm $TEMP_FILE
