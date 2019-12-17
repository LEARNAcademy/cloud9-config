#!/bin/bash

# Get a current version of yarn
sudo -i -u root bash << EOF
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update
apt-get -y install postgresql postgresql-contrib libpq-dev yarn
sudo -u postgres createuser -s ubuntu
createdb ubuntu

apt autoremove

EOF

gem install bundler
gem install rails

# Now Node
nvm install 10.15.3
nvm alias default 10.15.3

# React
npm install -g react@16.8.6
npm install -g create-react-app@3.0.1

npm install -g npm
