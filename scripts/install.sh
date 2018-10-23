#!/bin/bash

if [ $# -ne 2 ]; then
    echo "presto-companion PrestaShop Cloner"
    echo "use: ./install folder_destination prestashop_version"
    exit 1
fi

DESTINATION_FOLDER=$1
PRESTASHOP_VERSION=$2

echo Clone Prestashop
   
# Clone Prestashop into Build Folder
cd $DESTINATION_FOLDER
git clone --depth=1 --branch=$PRESTASHOP_VERSION https://github.com/Prestashop/Prestashop.git $DESTINATION_FOLDER 

# PrestaShop configuration
cp tests/parameters.yml.travis app/config/parameters.yml