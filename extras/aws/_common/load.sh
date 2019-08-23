#!/bin/bash
source /etc/profile.d/rvm.sh

cd /opt/sidekiq
bundle --path vendor/bundle
