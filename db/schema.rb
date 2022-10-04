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

ActiveRecord::Schema[7.0].define(version: 2022_10_04_231813) do
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

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
