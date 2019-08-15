sudo rm /etc/redis/redis.conf
sudo ln -s /vagrant/config/redis.conf /etc/redis/redis.conf
chown redis:redis /etc/redis
sudo service redis-server restart

cd /vagrant
bundle exec rake db:migrate
bundle exec rails s --binding=0.0.0.0 --daemon
