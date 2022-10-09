class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            if !user.failsuntil.nil?
                # Apabila lebih dari 30 menit
                if now - user.failsuntil <= 1800
                    flash[:alert] = "Please try again in 30 minutes."
                    render :new, status: :unprocessable_entity
                else
                    user.failsuntil = nil
                    user.fails = 0
                    user.save
                    redirect_to root_path, notice: "Logged in successfully"
                end
                
            else 
                redirect_to root_path, notice: "Logged in successfully"
            end
        else
            # puts YAML::dump(user)
            if user.present? && user.fails >= 3
                user.fails = user.fails + 1
                user.save
                flash[:alert] = "Please try again in 30 minutes."
                if user.failsuntil.nil?
                    user.failsuntil = Time.current
                    user.save
                else
                    now = Time.current
                    # Apabila lebih dari 30 menit
                    if now - user.failsuntil > 1800
                        user.failsuntil = nil
                        user.fails = 1
                        flash[:alert] = "Invalid email or password"
                    end

                    # user.failsuntil = nil
                    user.save
                end
            elsif user.present?
                user.fails = user.fails + 1
                user.save
                flash[:alert] = "Invalid email or password"
            else
                flash[:alert] = "Invalid email or password"
            end
            
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        puts session
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end