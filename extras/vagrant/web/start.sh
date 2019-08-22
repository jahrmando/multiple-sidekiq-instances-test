sudo rm /etc/redis/redis.conf
sudo ln -s /vagrant/config/redis.conf /etc/redis/redis.conf
chown redis:redis /etc/redis
sudo touch /vagrant/log/redis.log
sudo chmod g+wr /vagrant/log/redis.log
sudo gpasswd -a redis vagrant
sudo service redis-server restart

export SIDEKIQ_REDIS="10.10.150.10:7379"

cd /vagrant
bundle exec rake db:migrate
bundle exec rails s --binding=0.0.0.0 --daemon
