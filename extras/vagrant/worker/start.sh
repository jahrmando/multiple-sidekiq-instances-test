export SIDEKIQ_REDIS="10.10.150.10:7379"
cd /vagrant && bundle exec sidekiq --logfile=log/sidekiq-$(hostname).log --pidfile=tmp/sidekiq-$(hostname).pid --config /vagrant/config/sidekiq.yml --daemon
