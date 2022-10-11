class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :twitter_account
      t.string :belongs_to
      t.string :body
      t.string :text
      t.datetime :publish_at
      t.string :tweet_id
      t.string :string

      t.timestamps
    end
  end
end
