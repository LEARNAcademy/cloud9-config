#!/bin/bash

# Get a current version of yarn
echo "Command: curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

echo "Command: apt-get update"
apt-get update

echo "Command: apt-get -y install postgresql postgresql-contrib libpq-dev yarn"
apt-get -y install postgresql postgresql-contrib libpq-dev yarn

echo "Command: sudo -u postgres createuser -s ubuntu"
sudo -u postgres createuser -s ubuntu

echo "Command: sudo apt autoremove"
sudo apt autoremove

echo "Command: sudo -i -u ubuntu bash << EOF"
sudo -i -u ubuntu bash << EOF

echo "Command: gem install bundler"
gem install bundler

echo "Command: gem install rails -v 5.2.3"
gem install rails -v 5.2.3

# Now Node
echo "Command: nvm install 10.15.3"
nvm install 10.15.3

echo "Command: nvm alias default 10.15.3"
nvm alias default 10.15.3

# React

echo "Command: npm install react@16.8.6"
npm install react@16.8.6

echo "Cpommand: npm install create-react-app@3.0.1"
npm install create-react-app@3.0.1
EOF
