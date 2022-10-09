class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in successfully"
        else
            # puts YAML::dump(user)
            if user.present? && user.fails >= 3
                flash[:alert] = "Please try again in 30 minutes."
                render :new, status: :unprocessable_entity
            elsif user.present?
                user.fails = user.fails + 1
                user.save
            end
            flash[:alert] = "Invalid email or password"
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        puts session
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end