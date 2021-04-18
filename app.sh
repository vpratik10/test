echo "Kill all the running PM2 actions"
sudo pm2 kill

echo "Jump to app folder"
cd /home/ubuntu/app-name

echo "Update app from Git"
git pull

echo "Install app dependencies"
sudo rm -rf node_modules package-lock.json
sudo npm install

echo "Build your appp"
sudo npm run build

echo "Run new PM2 action"
sudo cp /home/ubuntu/eccosystem.json ecosystem.json
sudo pm2 start ecosystem.json


####Staging for###
