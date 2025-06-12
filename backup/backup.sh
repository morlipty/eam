#!/bin/bash

# Source configuration
source ~/eam/backup/config

# Store the current directory
current_dir="$(pwd)"

# Run backup archiving script
~/eam/backup/archive_backups.sh
~/eam/backup/backup_system_files.sh

# Return to the original directory
cd "$current_dir"

# Function to print usage information
usage() {
    echo "Usage: $0 <file-or-folder-to-move> [destination-subfolder]"
    echo "       $0 -r <symlink-path>"
    exit 1
}

# Function to retrieve the original file/folder
retrieve_item() {
    local symlink_path="$1"

    # Check if the path is a symlink
    if [ ! -L "$symlink_path" ]; then
        echo "Error: '$symlink_path' is not a symlink."
        exit 1
    fi

    # Get the actual target of the symlink
    local target_path=$(readlink -f "$symlink_path")

    # Get the directory containing the target
    local target_dir=$(dirname "$target_path")

    # Get the filename
    local item_name=$(basename "$target_path")

    # Remove the symlink
    rm "$symlink_path"

    # Move the item back to its original location
    mv "$target_path" "$(dirname "$symlink_path")/"

    echo "Retrieved '$item_name' from '$target_dir' to its original location."
}

# Check if retrieve option is used
if [ "$1" = "-r" ]; then
    # Ensure a path is provided with --retrieve
    if [ $# -ne 2 ]; then
        usage
    fi
    retrieve_item "$2"
    exit 0
fi

# Check if the correct number of arguments is provided
if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    usage
fi

# Get the absolute path of the file or folder
item="$1"

# Check if the item exists
if [ ! -e "$item" ]; then
    echo "Error: '$item' does not exist."
    exit 1
fi

# Determine the destination directory
if [ -z "$2" ]; then
    # If no second argument, use the default destination
    dest_dir="$destination"
else
    # Use the provided subfolder in the destination
    dest_dir="$destination/$2"
fi

# Ensure the destination directory exists
mkdir -p "$dest_dir"

# Get the base name of the file or folder
item_name=$(basename "$item")

# Move the item to the destination
mv "$item" "$dest_dir/"

# Create a symlink at the original location
ln -s "$dest_dir/$item_name" "$item"

echo "Moved '$item' to '$dest_dir' and created a symlink in its place."
