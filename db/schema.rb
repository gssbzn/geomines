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

ActiveRecord::Schema.define(version: 20131103011636) do

  create_table "mine_resources", force: true do |t|
    t.integer  "mine_id"
    t.integer  "mineral_id"
    t.string   "conditions"
    t.float    "daily_capacity"
    t.float    "monthly_capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mine_resources", ["mine_id"], name: "index_mine_resources_on_mine_id"
  add_index "mine_resources", ["mineral_id"], name: "index_mine_resources_on_mineral_id"

  create_table "minerals", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mines", force: true do |t|
    t.string   "name"
    t.text     "details"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
