class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        check = User.find_by(email: params[:email])
        if check.present?

        else
            @user = User.new(user_params)
            if @user.save
                session[:user_id] = @user.id
                redirect_to root_path, notice: "Successfully created new User"
            else
                render :new, status: :unprocessable_entity
            end
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
    