#!/bin/bash

# Get a current version of yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

apt-get update
apt-get -y install postgresql postgresql-contrib libpq-dev yarn
sudo -u postgres createuser -s ubuntu
sudo apt autoremove

sudo -i -u ubuntu bash << EOF

gem install bundler
gem install rails -v 5.2.3

# Now Node
nvm install 10.15.3
nvm alias default 10.15.3

# React
npm install react@16.8.6
npm install create-react-app@3.0.1
EOF
