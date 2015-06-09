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

ActiveRecord::Schema.define(version: 20150608064122) do

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.integer  "minsFromHome"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "traintrips", force: :cascade do |t|
    t.time     "trainleavesat"
    t.integer  "station_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "traintrips", ["station_id"], name: "index_traintrips_on_station_id"

  create_table "trip_options", force: :cascade do |t|
    t.time     "leaveHouseBy"
    t.time     "trainLeavesAt"
    t.integer  "station_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "trip_options", ["station_id"], name: "index_trip_options_on_station_id"

end
