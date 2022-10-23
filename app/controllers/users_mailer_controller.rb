class UsersMailerController < ApplicationController
    def index

    end

    def trigger_job
        user = User.find(3)
        mail = UsersMailer.welcome_email(user.id)
        mail.deliver_later

        # redirect_to :email_path
    end
end