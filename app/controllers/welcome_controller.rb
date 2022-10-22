class WelcomeController < ApplicationController
    def trigger_job
        HelloWorldJob.perform_later
        redirect_to welcome_index_path
    end
end