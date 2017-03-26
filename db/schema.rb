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

ActiveRecord::Schema.define(version: 20170326183212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geographic_areas", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.text     "flora"
    t.text     "fauna"
    t.text     "civilizations"
    t.text     "ruins"
    t.text     "landscape"
    t.text     "geography"
    t.text     "territory_control"
    t.text     "history"
    t.text     "lore"
    t.text     "archeology"
    t.text     "recommended_experience"
    t.text     "size"
    t.text     "points_of_interest"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "human_tribes", force: :cascade do |t|
    t.string   "name"
    t.text     "abilities"
    t.text     "history_and_culture"
    t.integer  "geographic_area_id"
    t.text     "skills_and_professions"
    t.text     "appearance"
    t.text     "alliances"
    t.text     "enemies"
    t.text     "trade_and_commerce"
    t.text     "political_structure"
    t.text     "notes"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["geographic_area_id"], name: "index_human_tribes_on_geographic_area_id", using: :btree
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role",                   default: ""
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "human_tribes", "geographic_areas"
end
