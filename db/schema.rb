# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140821183728) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "asia"
    t.boolean  "europe"
    t.boolean  "america"
    t.boolean  "australia"
  end

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["topic_id"], name: "index_comments_on_topic_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "destinations", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
    t.boolean  "foodie"
    t.boolean  "performances"
    t.boolean  "culture"
    t.boolean  "adventure"
    t.boolean  "family_trip"
  end

  create_table "topics", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "destination_id"
    t.integer  "user_id"
  end

  create_table "user_destinations", force: true do |t|
    t.integer  "user_id"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_destinations", ["destination_id"], name: "index_user_destinations_on_destination_id"
  add_index "user_destinations", ["user_id"], name: "index_user_destinations_on_user_id"

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "password"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "departure"
    t.datetime "arrival"
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
    t.boolean  "family_trip"
    t.boolean  "adventure"
    t.boolean  "culture"
    t.boolean  "performances"
    t.boolean  "foodie"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
