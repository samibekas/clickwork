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

ActiveRecord::Schema.define(version: 2018_08_23_083923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "desk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "dates"
    t.index ["desk_id"], name: "index_bookings_on_desk_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "desks", force: :cascade do |t|
    t.bigint "office_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available", default: true
    t.index ["office_id"], name: "index_desks_on_office_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "office_facilities", force: :cascade do |t|
    t.bigint "office_id"
    t.bigint "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_office_facilities_on_facility_id"
    t.index ["office_id"], name: "index_office_facilities_on_office_id"
  end

  create_table "offices", force: :cascade do |t|
    t.bigint "user_id"
    t.text "description"
    t.string "address"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.integer "capacity_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_offices_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "office_id"
    t.text "comment"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_reviews_on_office_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "desks"
  add_foreign_key "bookings", "users"
  add_foreign_key "desks", "offices"
  add_foreign_key "office_facilities", "facilities"
  add_foreign_key "office_facilities", "offices"
  add_foreign_key "offices", "users"
  add_foreign_key "reviews", "offices"
  add_foreign_key "reviews", "users"
end
