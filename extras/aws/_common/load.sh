#!/bin/bash
source /etc/profile.d/rvm.sh

rm -rf /opt/sidekiq/log && mkdir /opt/sidekiq/log
rm -rf /opt/sidekiq/tmp && mkdir /opt/sidekiq/tmp

cd /opt/sidekiq && bundle --path vendor/bundle
