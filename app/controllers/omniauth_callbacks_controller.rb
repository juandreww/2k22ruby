class OmniauthCallbacksController < ApplicationController
    def twitter
        Rails.logger.info auth

        Current.user.twitter_account.create(
            name: auth.info.name,
            username: auth.info.nickname,
            image: auth.info.image,
            token: auth.credentials.token,
            secret: auth.credentials.secret,
        )
        render :index
    end

    def auth
        
        request.env['omniauth.auth']
    end
end
