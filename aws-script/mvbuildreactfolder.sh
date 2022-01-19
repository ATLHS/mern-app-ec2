#!/bin/bash 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
npm i

# Restart Nginx and Express server
cd "/home/ubuntu"
sudo systemctl restart Nginx

cd "/home/ubuntu/folder/backend"
pm2 restart server.js

