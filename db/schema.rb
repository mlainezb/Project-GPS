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

ActiveRecord::Schema.define(version: 20161130004813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.string   "available_dr"
    t.string   "name"
    t.string   "last_name"
    t.string   "surname"
    t.integer  "rut"
    t.integer  "rut_dv"
    t.integer  "number_phone"
    t.string   "picture_dr"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "gps", force: :cascade do |t|
    t.integer  "status"
    t.float    "latitude"
    t.float    "length"
    t.integer  "available_gps"
    t.integer  "number_gps"
    t.integer  "number_phone"
    t.integer  "emei"
    t.text     "xtra"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.string   "name"
    t.text     "info"
    t.string   "picture"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "patent"
    t.string   "model_vh"
    t.string   "picture_vh"
    t.string   "color_marker"
    t.integer  "status_vh"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
