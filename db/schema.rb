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

ActiveRecord::Schema.define(version: 20150503003731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255
    t.string   "password",               limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "admins_projects", id: false, force: :cascade do |t|
    t.integer "admin_id",   null: false
    t.integer "project_id", null: false
  end

  add_index "admins_projects", ["admin_id", "project_id"], name: "index_admins_projects_on_admin_id_and_project_id", using: :btree
  add_index "admins_projects", ["project_id", "admin_id"], name: "index_admins_projects_on_project_id_and_admin_id", using: :btree

  create_table "community_resources", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "url"
    t.string   "address"
    t.string   "category"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "frequency"
    t.string   "description"
    t.string   "album_link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "facebooks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.string   "type",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permits", force: :cascade do |t|
    t.string   "status",               limit: 255
    t.boolean  "sec1_q1"
    t.boolean  "sec1_q2"
    t.boolean  "sec1_q3"
    t.boolean  "sec1_q4"
    t.boolean  "sec1_q5"
    t.string   "sec1_q6",              limit: 255
    t.boolean  "sec1_q7"
    t.string   "sec1_q8",              limit: 255
    t.string   "sec1_q9",              limit: 255
    t.string   "sec1_q10",             limit: 255
    t.boolean  "sec1_q11"
    t.string   "sec1_q12",             limit: 255
    t.string   "sec1_q13",             limit: 255
    t.boolean  "sec1_q14"
    t.string   "firewatch_sign_start", limit: 255
    t.integer  "project_id"
    t.string   "location",             limit: 255
    t.string   "building",             limit: 255
    t.integer  "floor"
    t.text     "task"
    t.string   "company",              limit: 255
    t.string   "subcontractor_name",   limit: 255
    t.datetime "issued"
    t.datetime "expires"
    t.integer  "admin_id"
    t.text     "comments"
    t.boolean  "sec3_q1"
    t.boolean  "sec3_q2"
    t.datetime "sec3_date"
    t.string   "subcontractor_sign",   limit: 255
    t.string   "firewatch_sign_end",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "number"
    t.string   "phase",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_members", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "photo_url"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
