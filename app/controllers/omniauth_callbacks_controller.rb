class OmniauthCallbacksController < ApplicationController
    def twitter
        puts "HOLLYYYYYYYYYY PAPA MAMA GILSSSSSSSSSSS"
        Rails.logger.info auth

        twitter_account = Current.user.twitter_accounts.where(username: auth.info.nicname).first_or_initialize

        twitter_account.update(
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
