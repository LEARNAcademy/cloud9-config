#!/bin/bash

apt-get update
apt-get -y install postgresql postgresql-contrib libpq-dev yarn
sudo -u postgres createuser -s ubuntu

sudo -i -u ubuntu bash << EOF

gem install bundler
gem install rails

EOF
