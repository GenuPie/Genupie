# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171023021222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "mobile", limit: 60, default: "", null: false, comment: "项目内的订单id"
    t.string "name", limit: 50, default: "", null: false
    t.string "email", limit: 100, default: "", null: false
    t.string "password_digest", limit: 200, default: "", null: false
    t.datetime "last_login_time", null: false
    t.string "remember_token", limit: 60, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["remember_token", "id"], name: "index_users_on_remember_token_and_id"
  end

end
