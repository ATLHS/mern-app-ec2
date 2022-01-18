#!/bin/bash 

# building react app
cd "/home/ubuntu/folder/frontend/" npm run build

# copy paste react build folder to nginx web server new location
cp -r "/home/ubuntu/folder/frontend/build/"* "/var/www/react-app"

