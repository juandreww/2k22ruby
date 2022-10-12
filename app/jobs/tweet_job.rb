class TweetJob < ApplicationJob
  queue_as :default

  def perform(*args)
    return if tweet.published?

    # Reschedule
    return if tweet.publish_at > Time.current
    tweet.publish_to_twitter!
  end
end