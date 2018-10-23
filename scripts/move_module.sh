#!/bin/bash

if [ $# -ne 2 ]; then
    echo "presto-companion Module Mover"
    echo "use: ./move_module folder_origin folder_destination"
    exit 1
fi

ORIGIN_FOLDER=$1
DESTINATION_FOLDER=$2

echo Move Module from $ORIGIN_FOLDER to $DESTINATION_FOLDER Folder

# Move Module Contents to Tmp Folder
mkdir $DESTINATION_FOLDER
mv -f $ORIGIN_FOLDER/* $DESTINATION_FOLDER      

mkdir $DESTINATION_FOLDER/.git    
mv -f $ORIGIN_FOLDER/.travis.yml $DESTINATION_FOLDER/.travis.yml      

# Delete Remaining Contents from Build Folder
rm -Rf $ORIGIN_FOLDER/.git
rm -Rf $ORIGIN_FOLDER/.gitignore
rm -Rf $ORIGIN_FOLDER/.travis.yml
rm -Rf $ORIGIN_FOLDER/*