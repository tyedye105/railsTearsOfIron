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

ActiveRecord::Schema.define(version: 20170519045249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.integer "hit_points",       default: 100
    t.integer "battery_level",    default: 100
    t.integer "player_id"
    t.boolean "is_alive",         default: true
    t.boolean "is_new",           default: true
    t.integer "tile_id",          default: 47
    t.integer "room_id",          default: 1
    t.integer "previous_tile",    default: 47
    t.integer "facing_direction", default: 1
  end

  create_table "doors", force: :cascade do |t|
    t.string  "name"
    t.boolean "is_locked",   default: true
    t.boolean "active",      default: true
    t.integer "room_id"
    t.string  "description"
    t.string  "req_item"
    t.integer "tile_id"
    t.string  "img"
    t.integer "group_no"
  end

  create_table "items", force: :cascade do |t|
    t.string  "description"
    t.boolean "obtainable",   default: true
    t.boolean "active",       default: false
    t.integer "room_id"
    t.boolean "key_item"
    t.string  "rarity"
    t.integer "character_id"
    t.integer "origin_id"
    t.integer "tile_id"
    t.string  "name"
    t.string  "img"
  end

  create_table "players", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "is_admin",               default: false
    t.index ["email"], name: "index_players_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true, using: :btree
  end

  create_table "rooms", force: :cascade do |t|
    t.string  "name"
    t.string  "door_ways"
    t.boolean "first_time",         default: true
    t.string  "first_description"
    t.string  "normal_description"
    t.integer "row_max"
  end

  create_table "sentries", force: :cascade do |t|
    t.string  "name"
    t.boolean "active_patrol",     default: true
    t.integer "ptrl_range"
    t.integer "distance_traveled", default: 1
    t.string  "ptrl_direction"
    t.boolean "active",            default: true
    t.integer "room_id"
    t.integer "tile_id"
  end

  create_table "tiles", force: :cascade do |t|
    t.string  "tile_name"
    t.integer "room_id"
    t.integer "row_max"
    t.boolean "is_solid"
    t.integer "transition_tile"
  end

end
