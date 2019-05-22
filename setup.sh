#!/bin/bash

# Get a current version of yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

apt-get update
apt-get -y install postgresql postgresql-contrib libpq-dev yarn
sudo -u postgres createuser -s ubuntu

sudo -i -u ubuntu bash << EOF

gem install bundler
gem install rails -v 5.2.3

# Now Node
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
nvm install 10.15.3
nvm alias default 10.15.3

# React
npm install react@16.8.6
npm install create-react-app@3.0.1
EOF
