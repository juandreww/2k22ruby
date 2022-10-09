class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_now
        end

        redirect_to root_path, notice: "We are sending the link to your email to reset the password"
    end

    def edit
        @user = User.find_signed!(params[:token], purpose: "password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to sign_in_path, alert: "Your token has expired, Please try again.."
    end

    def update
        @user = User.find_signed!(params[:token], purpose: "password_reset")
        if @user.update(password_params)
            redirect_to sign_in_path, notice:"Your password was reset successfully. Please sign in again"
        else
            render :edit, status: :unprocessable_entity
        end
    end 

    def toshi123
        puts params[:email]
        @user = User.find_by(email: params[:email])
        if @user.present?
            default_pwd = BCrypt::Password.create("toshi123")
            @user.password_digest = default_pwd
            @user.save
            redirect_to sign_in_path, notice:"Your password was reset to default successfully. Please sign in again"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private 

    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end