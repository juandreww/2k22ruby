class HelloWorldJob < ApplicationJob
    queue_as :default

    def perform(*args)
        sleep 5

        p "hello from HelloWorldJob #{Time.now().strftime('%F - %H:%M:%S.%L')}"
    end
end