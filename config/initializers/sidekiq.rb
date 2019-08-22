if ENV['SIDEKIQ_REDIS']
  Sidekiq.configure_server do |config|
    config.redis = { url: "redis://#{ENV['SIDEKIQ_REDIS']}/12" }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: "redis://#{ENV['SIDEKIQ_REDIS']}/12" }
  end
end
