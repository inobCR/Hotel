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

ActiveRecord::Schema.define(version: 20160722165615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name",   default: "", null: false
    t.string   "last_name",    default: "", null: false
    t.string   "email",        default: ""
    t.string   "phone_number", default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "room_number",      default: 0, null: false
    t.integer  "floor",            default: 0, null: false
    t.integer  "quantity_of_beds", default: 0, null: false
    t.integer  "standard",         default: 0, null: false
    t.integer  "price",            default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "terms", force: :cascade do |t|
    t.date     "begin_date",       default: '2016-07-23', null: false
    t.date     "end_date",         default: '2016-07-24', null: false
    t.integer  "room_id",          default: 0,            null: false
    t.integer  "client_id",        default: 0,            null: false
    t.integer  "quantity_of_beds", default: 1,            null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["client_id"], name: "index_terms_on_client_id", using: :btree
    t.index ["room_id"], name: "index_terms_on_room_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
