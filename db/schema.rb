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

ActiveRecord::Schema.define(version: 20171203095015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.integer "product_id", default: 0, null: false, comment: "商品ID"
    t.integer "user_id", default: 0, null: false, comment: "用户ID"
    t.integer "price", default: 0, null: false, comment: "价格"
    t.string "out_trade_no", limit: 50, default: "", null: false
    t.integer "order_state", limit: 2, default: 0, null: false, comment: "订单状态"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_tag_relations", force: :cascade do |t|
    t.integer "product_id", default: 0, null: false, comment: "商品ID"
    t.integer "tag_id", default: 0, null: false, comment: "TagID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name", default: "", null: false, comment: "商品名称"
    t.string "images_path", default: "", null: false, comment: "图片"
    t.integer "original_price", default: 0, null: false, comment: "原价"
    t.integer "price", default: 0, null: false, comment: "售价"
    t.string "summary", default: "", null: false, comment: "简介"
    t.text "describe", null: false, comment: "详情"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", limit: 50, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "mobile", limit: 60, default: "", null: false
    t.string "name", limit: 50, default: "", null: false
    t.string "email", limit: 100, default: "", null: false
    t.string "remember_token", limit: 60, default: "", null: false
    t.string "crypted_password"
    t.string "password_salt"
    t.string "persistence_token"
    t.string "single_access_token"
    t.string "perishable_token"
    t.integer "login_count", default: 0, null: false
    t.integer "failed_login_count", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string "current_login_ip"
    t.string "last_login_ip"
    t.boolean "active", default: false
    t.boolean "approved", default: false
    t.boolean "confirmed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perishable_token"], name: "index_users_on_perishable_token", unique: true
    t.index ["persistence_token"], name: "index_users_on_persistence_token", unique: true
    t.index ["remember_token", "id"], name: "index_users_on_remember_token_and_id"
    t.index ["single_access_token"], name: "index_users_on_single_access_token", unique: true
  end

end
