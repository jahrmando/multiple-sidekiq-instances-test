#!/bin/bash
source /etc/profile.d/rvm.sh

cd /export/sidekiq
bundle --path vendor/bundle
