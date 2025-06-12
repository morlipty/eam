#!/bin/bash

source ~/eam/backup/config

cd ~/eam/

# Upload git
if gum confirm "Upload to git?"; then
    git add *
    git commit -m "Backup $current_date"
    git push
fi
