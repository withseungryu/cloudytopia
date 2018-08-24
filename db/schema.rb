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

ActiveRecord::Schema.define(version: 20180823132818) do

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_identities_on_user_id"
  end

  create_table "information1s", force: :cascade do |t|
    t.string   "name"
    t.string   "age"
    t.string   "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mads", force: :cascade do |t|
    t.string   "title"
    t.string   "score1"
    t.string   "score2"
    t.string   "score3"
    t.string   "score_avg"
    t.text     "ment"
    t.integer  "toilet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toilet_id"], name: "index_mads_on_toilet_id"
  end

  create_table "maps", force: :cascade do |t|
    t.string   "title"
    t.string   "score1"
    t.string   "score2"
    t.string   "score3"
    t.string   "score_avg"
    t.text     "ment"
    t.integer  "toilet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subways", force: :cascade do |t|
    t.string   "station"
    t.string   "tonum"
    t.string   "gate_inner"
    t.string   "gate_outer"
    t.string   "toi_info"
    t.string   "exper"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toilets", force: :cascade do |t|
    t.string   "division"
    t.string   "name"
    t.string   "address"
    t.boolean  "unisex",         default: false
    t.string   "maleflusher"
    t.string   "maleurinal"
    t.boolean  "malehandicap",   default: false
    t.boolean  "malechild",      default: false
    t.string   "femaleflusher"
    t.boolean  "femalehandicap", default: false
    t.boolean  "femalechild",    default: false
    t.boolean  "manager"
    t.string   "phonenum"
    t.string   "time"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
