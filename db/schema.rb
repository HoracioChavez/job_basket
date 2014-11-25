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

ActiveRecord::Schema.define(version: 20141125224744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "description"
    t.string   "name"
    t.integer  "team_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_connections", force: true do |t|
    t.integer  "company_id"
    t.integer  "connection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "connections", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "github_jobs", force: true do |t|
    t.integer  "github_id"
    t.string   "github_created_at"
    t.string   "title"
    t.string   "location"
    t.string   "type"
    t.text     "description"
    t.text     "how_to_apply"
    t.string   "company"
    t.string   "company_url"
    t.string   "company_logo"
    t.string   "github_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "github_id"
    t.string   "github_created_at"
    t.string   "location"
    t.string   "job_type"
    t.text     "how_to_apply"
    t.string   "company_name"
    t.string   "company_url"
    t.string   "company_logo"
    t.string   "github_url"
    t.boolean  "full_time"
  end

  create_table "updates", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "news_id"
    t.string   "news_type"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
