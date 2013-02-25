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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130225103945) do

  create_table "applicantresumes", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile_number"
    t.string   "nationality"
    t.string   "upload_resume"
    t.text     "cover_letter"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
    t.string   "applied_for"
  end

  create_table "applicants", :force => true do |t|
    t.string   "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
    t.text     "message"
    t.boolean  "accept_resume"
    t.string   "resume"
    t.text     "requirements"
    t.text     "responsibilities"
  end

  create_table "clientprofiles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emailus", :force => true do |t|
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "home_images", :force => true do |t|
    t.string   "image"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "images", :force => true do |t|
    t.integer  "user_id"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "smstexts", :force => true do |t|
    t.text     "smsmessage"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "recipient"
  end

  create_table "spaceforleaseimages", :force => true do |t|
    t.string   "image"
    t.text     "description"
    t.integer  "spaceforlease_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "spaceforleases", :force => true do |t|
    t.string   "main_image"
    t.string   "unit"
    t.string   "level"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "logo"
    t.string   "level"
    t.string   "unit"
    t.string   "username"
    t.string   "telephone"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "webprofiles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
