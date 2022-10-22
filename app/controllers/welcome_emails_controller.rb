class WelcomeEmailsController < ApplicationController
    def index

    end

    def trigger_job
        user = User.find(1)
        mail = UsersMailer.welcome_email(user.id)
        mail.deliver_later
    end
end