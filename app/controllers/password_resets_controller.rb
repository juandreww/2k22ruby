class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            
        end

        redirect_to root_path, notice: "We are sending the link to your email to reset the password"
    end
end