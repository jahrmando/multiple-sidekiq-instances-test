#!/bin/bash
source /etc/profile.d/env_sidekiq.sh
source /etc/profile.d/rvm.sh

cd /opt/sidekiq && bundle exec sidekiq \
  --logfile=/home/deploy/sidekiq-$(hostname).log \
  --pidfile=/home/deploy/sidekiq-$(hostname).pid \
  --config /opt/sidekiq/config/sidekiq.yml \
  --daemon
