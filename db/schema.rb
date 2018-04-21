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


ActiveRecord::Schema.define(version: 20180418084909) do

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "last_name"
    t.string   "first_name"
    t.string   "last_name_kana"
    t.string   "first_name_kana"
    t.integer  "postal_code"
    t.integer  "prefecture"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "zozo_id"
    t.integer  "phone_num_1"
    t.integer  "phone_num_2"
    t.integer  "phone_num_3"
    t.integer  "sexuality"
    t.datetime "birthday"
    t.integer  "point"
    t.integer  "check_rule"
    t.index ["email"], name: "index_customers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "image"
    t.integer "product_id", null: false
    t.integer "size_id"
    t.index ["product_id"], name: "index_images_on_product_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name",                          null: false
    t.integer "normal_price",                  null: false
    t.integer "discount_price"
    t.integer "tax",                           null: false
    t.integer "price_status"
    t.text    "comment_1",       limit: 65535
    t.text    "comment_2",       limit: 65535
    t.integer "small_category",                null: false
    t.integer "large_category",                null: false
    t.integer "sexual_category"
    t.date    "release_date"
  end

  create_table "stocks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id",  null: false
    t.string   "color",       null: false
    t.string   "size",        null: false
    t.integer  "stock",       null: false
    t.integer  "stock_limit"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image_id"
    t.index ["product_id"], name: "index_stocks_on_product_id", using: :btree
  end

  add_foreign_key "images", "products"
end
