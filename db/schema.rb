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

ActiveRecord::Schema.define(version: 20140508133513) do

  create_table "academics", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "time"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "number"
    t.text     "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employments", force: true do |t|
    t.text     "position"
    t.text     "company"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "description"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "researches", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "r"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "staffs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cis_page"
    t.string   "personal_page"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_projects", force: true do |t|
    t.string   "student"
    t.string   "time"
    t.string   "topic"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studies", force: true do |t|
    t.text     "name"
    t.datetime "date"
    t.text     "location"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
