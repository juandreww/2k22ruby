class PostsController < ApplicationController
    def index
    end

    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_now
        end

        redirect_to root_path, notice: "We are sending the link to your email to reset the password"
    end

    private 

    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end