class TwitterAccount < ApplicationRecord
  has_many :tweets
  belongs_to :user
  
  validates :username, uniqueness: true

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = Rails.application.credentials.dig(:twitter, :api_key)
    config.consumer_secret     = Rails.application.credentials.dig(:twitter, :api_secret)
    config.access_token        = self.token
    config.access_token_secret = self.secret
  end
end
