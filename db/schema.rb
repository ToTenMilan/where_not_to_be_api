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

ActiveRecord::Schema.define(version: 20200321165410) do

  create_table "help_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "request_type", default: 0, null: false
    t.string   "title",                    null: false
    t.string   "description"
    t.integer  "status",       default: 0, null: false
    t.float    "lat"
    t.float    "lng"
    t.datetime "time_from"
    t.datetime "time_to"
    t.integer  "target"
    t.string   "unit"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id"], name: "index_help_requests_on_user_id"
  end

  create_table "point_of_interests", force: :cascade do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "density"
  end

  create_table "user_pois", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "point_of_interest_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["point_of_interest_id"], name: "index_user_pois_on_point_of_interest_id"
    t.index ["user_id"], name: "index_user_pois_on_user_id"
  end

  create_table "user_voivodeships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "voivodeship_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_user_voivodeships_on_user_id"
    t.index ["voivodeship_id"], name: "index_user_voivodeships_on_voivodeship_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "lat"
    t.float    "lng"
    t.string   "voivodeship"
    t.integer  "points"
    t.float    "home_lat"
    t.float    "home_lng"
  end

  create_table "voivodeships", force: :cascade do |t|
    t.string   "name"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
