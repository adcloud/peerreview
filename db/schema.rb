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

ActiveRecord::Schema.define(version: 20130316001634) do

  create_table "members", force: true do |t|
    t.string   "email"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  add_index "members", ["role_id"], name: "index_members_on_role_id"
  add_index "members", ["team_id"], name: "index_members_on_team_id"

  create_table "questions", force: true do |t|
    t.string   "text"
    t.string   "section"
    t.integer  "fromrole_id"
    t.integer  "forrole_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["forrole_id"], name: "index_questions_on_forrole_id"
  add_index "questions", ["fromrole_id"], name: "index_questions_on_fromrole_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
