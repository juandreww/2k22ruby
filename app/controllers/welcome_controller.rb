class WelcomeController < ApplicationController
    def trigger_job
        puts "coba"
        HelloWorldJob.perform_later
        redirect_to welcome_index_path
    end

    def index
        puts "AKu disini"
    end
end