sudo apt-get -y update
sudo apt-get -y install htop build-essential zlib1g-dev curl git-core sqlite3 libsqlite3-dev
sudo apt-get -y install nodejs

# Install prebuilded ruby 2.3.0
curl https://s3.amazonaws.com/pkgr-buildpack-ruby/current/$(lsb_release -is | awk '{print tolower($0)}')-$(lsb_release -rs)/ruby-2.3.0.tgz -o - | sudo tar xzf - -C /usr/local

# Install bundler
gem install bundler -v 1.17.3 --no-ri --no-rdoc
