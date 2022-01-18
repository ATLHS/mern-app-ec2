#!/bin/bash 

# building react app

# remove react build folder content from nginx web server new location
sudo rm -r "/var/www/react-app/"*

# copy paste new react build folder to nginx web server new location
cp -r "/home/ubuntu/folder/frontend/build/"* "/var/www/react-app"

# Installing dependencies for backend 
cd "/home/ubuntu/folder/backend"
npm i

# Installing dependencies for frontend
cd "/home/ubuntu/folder/frontend"
npm i

# restart Nginx and Express server
cd "/home/ubuntu"
sudo systemctl restart nginx

