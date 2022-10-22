require 'sidekiq'

Sidekiq.configure_client do |config|
    config.redis = { db: 1 }
end

Sidekiq.configure_server do |config|
    config.redis = { db: 1 }
end

class OurWorker
    include Sidekiq::Worker
    sidekiq_options retry: 0

    def perform(complexity)
        case complexity
        when "super_hard"
            puts "Charging a credit card..."
            raise "Woops stuff got bad #{Time.now().strftime('%F - %H:%M:%S.%L')}"

            # sleep 20
            puts "Really took quite a bit of effort #{Time.now().strftime('%F - %H:%M:%S.%L')}"
        when "hard"
            sleep 10
            puts "That was a bit of work"
        else
            sleep 1
            puts "That wasn't a lot of effort"
        end
    end
end