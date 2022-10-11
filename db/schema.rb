# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_11_230856) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", id: :uuid, default: nil, force: :cascade do |t|
    t.string "name", limit: 50
    t.string "username", limit: 50
    t.string "password", limit: 50
    t.boolean "isactive"
  end

  create_table "pricing", id: { type: :string, limit: 38 }, force: :cascade do |t|
    t.string "title", limit: 255, default: "Default"
    t.decimal "price", precision: 19, scale: 4, default: "0.0"
  end

  create_table "tweets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "twitter_account_id", null: false
    t.string "body"
    t.string "text"
    t.datetime "publish_at"
    t.string "tweet_id"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["twitter_account_id"], name: "index_tweets_on_twitter_account_id"
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "twitter_accounts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "username"
    t.string "image"
    t.string "token"
    t.string "secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_twitter_accounts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fails", limit: 2, default: 0
    t.datetime "failsuntil", precision: nil
  end

  add_foreign_key "tweets", "twitter_accounts"
  add_foreign_key "tweets", "users"
  add_foreign_key "twitter_accounts", "users"
end
