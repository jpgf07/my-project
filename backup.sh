#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################

backup_files="/root/home/nextjs-jpsblog"
dest="/root/home/Backups"

day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

echo "Backing up $backup_files to $dest/$archive_file"
date
echo

tar czf $dest/$archive_file $backup_files

echo
echo "Backup finished"
date

ls -lh $dest
