#!/bin/bash

#paths
toml_file="$1"

source ~/eam/scripts/android/android_studio/config
source $home_location/functions

#define output files
versions_file="versions.toml"
libraries_file="libraries.toml"
plugins_file="plugins.toml"

#define input files
versons_input="$home_location/libs_versions_toml/versions"
libraries_input="$home_location/libs_versions_toml/libraries"
plugins_input="$home_location/libs_versions_toml/plugins"

awk '
    /^\[versions\]/   { out="versions.toml"; print > out; next }
    /^\[libraries\]/  { out="libraries.toml"; print > out; next }
    /^\[plugins\]/    { out="plugins.toml"; print > out; next }
    out { print > out }
' "$toml_file"

#backup and empty original file
cp "$toml_file" "$toml_file.$current_date"
>$toml_file

#append plugins to code
cat $versons_input >>$versions_file
echo "versions added"

cat $libraries_input >>$libraries_file
echo "libraries added"

cat $plugins_input >>$plugins_file
echo "plugins added"

#append to toml_file
cat $versions_file >>$toml_file
echo "" | cat >>"$toml_file"
cat $libraries_file >>$toml_file
echo "" | cat >>"$toml_file"
cat $plugins_file >>$toml_file

rm $libraries_file $plugins_file $versions_file
