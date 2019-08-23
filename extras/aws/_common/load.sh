#!/bin/bash
source /etc/profile.d/rvm.sh

mkdir /opt/sidekiq/log
mkdir /opt/sidekiq/tmp

cd /opt/sidekiq
bundle --path vendor/bundle
