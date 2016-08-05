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

ActiveRecord::Schema.define(version: 20160805173054) do

  create_table "history_sessions", force: :cascade do |t|
    t.date     "date"
    t.time     "hour"
    t.boolean  "state",      default: true
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "history_sessions", ["user_id"], name: "index_history_sessions_on_user_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "state",       default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "identification"
    t.string   "telephone"
    t.string   "email"
    t.string   "user_name"
    t.string   "password_digest"
    t.integer  "role_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["role_id"], name: "index_users_on_role_id"

end
