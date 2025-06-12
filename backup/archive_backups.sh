#!/bin/bash

source ~/eam/backup/config
current_dir="$(pwd)"

archive_name="backup_$current_date.zip"

files_to_archive="$HOME/eam/dotfiles/ $HOME/eam/system_files/"

7z a -mx=9 "$HOME/eam/backup/archives/$archive_name" $files_to_archive

cd ~/eam/dotfiles/
echo "configs" >$file_txt
eza -a --tree --level=2 --icons=always >>$file_txt
echo "" >>$file_txt

cd ~/eam/system_files/
echo "system configs" >>$file_txt
eza -a --tree --level=2 --icons=always >>$file_txt
echo "" >>$file_txt

cd $current_dir

echo "Archive created: $archive_name"
