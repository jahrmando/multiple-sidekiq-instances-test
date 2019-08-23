#!/bin/bash
source /etc/profile.d/rvm.sh

rvm install ruby-2.3.0
rvm --default use ruby-2.3.0

gem install bundler -v 1.17.3 --no-ri --no-rdoc
