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

ActiveRecord::Schema.define(version: 20140417195734) do

  create_table "applicants", force: true do |t|
    t.string   "name"
    t.string   "nick"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "week1",          precision: 5, scale: 2
    t.decimal  "week2",          precision: 5, scale: 2
    t.decimal  "week3",          precision: 5, scale: 2
    t.decimal  "week4",          precision: 5, scale: 2
    t.decimal  "week5",          precision: 5, scale: 2
    t.decimal  "week6",          precision: 5, scale: 2
    t.decimal  "week7",          precision: 5, scale: 2
    t.decimal  "week8",          precision: 5, scale: 2
    t.decimal  "week9",          precision: 5, scale: 2
    t.decimal  "week10",         precision: 5, scale: 0
    t.decimal  "week11",         precision: 5, scale: 0
    t.decimal  "week12",         precision: 5, scale: 0
    t.string   "missing_points",                         default: ""
    t.string   "key"
  end

  create_table "settings", force: true do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true

end
