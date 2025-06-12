#!/bin/bash

source ~/eam/backup/config

# Backup system changed files
if gum confirm "Backup system files?"; then
    for file in "${system_files[@]}"; do
        sudo rsync -avh $file ~/eam/system_files/
        echo "Backed up $file"
    done
fi
