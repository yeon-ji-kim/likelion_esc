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

ActiveRecord::Schema.define(version: 20180817072936) do

  create_table "class_ew_links", force: :cascade do |t|
    t.integer  "ewhaclass_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "class_sm_links", force: :cascade do |t|
    t.integer  "smclass_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ewhaclasses", force: :cascade do |t|
    t.string   "courseno"
    t.string   "title"
    t.string   "year"
    t.string   "instructor"
    t.string   "timef"
    t.string   "times"
    t.string   "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id"

  create_table "lecture_eval_ewhas", force: :cascade do |t|
    t.text     "content"
    t.integer  "lecture_id"
    t.string   "user_id"
    t.integer  "written"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "class_id"
    t.integer  "star"
  end

  create_table "lecture_evals", force: :cascade do |t|
    t.text     "content"
    t.integer  "lecture_id"
    t.string   "user_id"
    t.integer  "written"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "class_id"
    t.integer  "star"
  end

  create_table "lecture_ewhas", force: :cascade do |t|
    t.string   "courseno"
    t.string   "classno"
    t.string   "title"
    t.string   "classification"
    t.string   "major"
    t.string   "year"
    t.string   "instructor"
    t.string   "credit"
    t.string   "hour"
    t.string   "timeroom"
    t.string   "quata"
    t.string   "note"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_comment_ewhas", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "content"
    t.string   "email"
    t.integer  "post_ewha_id"
    t.string   "nickname"
  end

  create_table "post_comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "post_id"
    t.string   "content"
    t.string   "email"
    t.string   "nickname"
  end

  create_table "post_ewhas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.string   "nickname"
    t.string   "email"
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.string   "nickname"
    t.string   "email"
  end

  create_table "smclasses", force: :cascade do |t|
    t.string   "courseno"
    t.string   "title"
    t.string   "year"
    t.string   "instructor"
    t.string   "timef"
    t.string   "times"
    t.string   "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_ewhas", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "user_ewhas", ["email"], name: "index_user_ewhas_on_email", unique: true
  add_index "user_ewhas", ["reset_password_token"], name: "index_user_ewhas_on_reset_password_token", unique: true

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.integer  "username"
    t.integer  "password"
    t.string   "nickname"
    t.string   "school"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
