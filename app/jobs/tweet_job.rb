class TweetJob < ApplicationJob
  queue_as :default

  def perform(*args)
    tweet.publish_to_twitter!
  end
end
