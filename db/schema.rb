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

ActiveRecord::Schema.define(version: 20130425190532) do

  create_table "jobs", force: true do |t|
    t.string   "name"
    t.string   "job_type"
    t.string   "box_name"
    t.string   "owner"
    t.string   "command"
    t.string   "machine"
    t.string   "permission"
    t.integer  "date_condition"
    t.string   "days_of_week"
    t.string   "start_times"
    t.string   "condition"
    t.string   "short_description"
    t.string   "str_out_file"
    t.string   "str_err_file"
    t.integer  "alarm_if_fail"
    t.float    "avg_runtime_min"
    t.float    "avg_runtime_sec"
    t.string   "max_runtime_min"
    t.string   "contacts"
    t.string   "system"
    t.string   "system_type"
    t.text     "description"
    t.string   "priority"
    t.string   "critical"
    t.text     "actions"
    t.text     "notes"
    t.string   "submited_by"
    t.date     "created_on"
    t.string   "modified_by"
    t.date     "last_modified_on"
    t.text     "update_log"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",     limit: 128, default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
