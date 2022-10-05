class SessionsController < ApplicationController
    def new
    end

    def create
    end
    
    def destroy
        puts session
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end