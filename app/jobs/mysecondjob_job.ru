require 'sidekiq'

Sidekiq.configure_client do |config|
    config.redis = { db: 1 }
end

