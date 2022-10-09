class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        check = User.find_by(email: @user.email)
        if check.present?
            flash[:alert] = "Email already used."
            render :new, status: :unprocessable_entity
        elsif @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created new User"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
    