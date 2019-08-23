#!/bin/bash
# apt-get -y update
apt-get -y install htop build-essential zlib1g-dev curl git-core sqlite3 libsqlite3-dev gnupg
apt-get -y install nodejs

# Install prebuilded ruby 2.3.0
# curl https://s3.amazonaws.com/pkgr-buildpack-ruby/current/$(lsb_release -is | awk '{print tolower($0)}')-$(lsb_release -rs)/ruby-2.3.0.tgz -o - | tar xzf - -C /usr/local
# Install bundler
# gem install bundler -v 1.17.3 --no-ri --no-rdoc
# Adduser to sidekiq
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

curl -sSL https://get.rvm.io | bash -s stable
usermod -a -G rvm `whoami`

adduser --system --disabled-login --home /home/deploy --quiet deploy
# Make directories
mkdir -p /export/sidekiq
chown deploy -R /export/sidekiq
usermod -a -G rvm deploy
