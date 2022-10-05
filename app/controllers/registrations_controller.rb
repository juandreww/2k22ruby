class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        render plain: "thank you for signing up"
    end
end
    