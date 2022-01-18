#!/bin/bash 

# building react app
echo "Building React Project"
cd "/home/ubuntu/folder/frontend/" sudo npm run build

# copy paste react build folder to nginx web server new location
cp -r "/home/ubuntu/folder/frontend/build/"* "/var/www/react-app"

