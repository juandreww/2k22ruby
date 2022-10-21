require 'sidekiq'

Sidekiq.configure_client do |config|
    config.redis = { db: 1 }
end

Sidekiq.configure_server do |config|
    config.redis = { db: 1 }
end

class OurWOrker
    include Sidekiq::Worker

    def perform(complexity)
        case complexity
        when "super_hard"
            sleep 20
            puts "Really took quite a bit of effort"
        end
    end
end