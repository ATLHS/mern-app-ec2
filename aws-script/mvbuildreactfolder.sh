#!/bin/bash 
sudo chown -R ubuntu "/home/ubuntu/folder/"

# Building react app
# cd "/home/ubuntu/folder/frontend"
# npm run build

# Remove react build folder content from Nginx web server to new location
sudo rm -r "/var/www/react-app/"*

# Copy paste new react build folder to nginx web server new location
cp -r "/home/ubuntu/folder/frontend/build/"* "/var/www/react-app"

# Installing backend dependencies
cd "/home/ubuntu/folder/backend"
npm i

# Installing frontend dependencies
cd "/home/ubuntu/folder/frontend"
npm uninstall react-bootstrap

# Restart Express server and Nginx

# cd "/home/ubuntu/folder/backend"
# pm2 restart server.js

# cd "/home/ubuntu"
# sudo systemctl restart Nginx
 

