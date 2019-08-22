#!/bin/bash

source /etc/profile.d/env_sidekiq.sh
cd /export/sidekiq && bundle exec sidekiq --logfile=log/sidekiq-$(hostname).log --pidfile=tmp/sidekiq-$(hostname).pid --config /export/sidekiq/config/sidekiq.yml --daemon
