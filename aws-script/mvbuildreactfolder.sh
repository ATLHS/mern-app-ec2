#!/bin/bash 

# install dependencies in front and back npm i

# building react app
#echo "Building React Project"
#cd "/home/ubuntu/folder/frontend"
#npm run build

# remove react build folder content from nginx web server new location
sudo rm -r "/var/www/react-app/"*

# copy paste new react build folder to nginx web server new location
cp -r "/home/ubuntu/folder/frontend/build/"* "/var/www/react-app"

# restart nginx
#cd "/home/ubuntu"
#sudo systemctl restart nginx

