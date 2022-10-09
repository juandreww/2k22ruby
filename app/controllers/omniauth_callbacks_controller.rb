class OmniauthCallbacksController < ApplicationController
    def twitter
        Rails.logger.info auth

        Current.user.twitter_account.create(
            
        )
        render :index
    end
end
