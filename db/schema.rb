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

ActiveRecord::Schema.define(version: 2019_09_05_123155) do

  create_table "bank_details", force: :cascade do |t|
    t.string "bank_account_number"
    t.string "bsb"
    t.string "sort_code"
    t.string "routing_number"
    t.integer "payout_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payout_detail_id"], name: "index_bank_details_on_payout_detail_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.float "price"
    t.datetime "date"
    t.string "start_time"
    t.string "end_time"
    t.integer "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quick_reply"
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payout_details", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "date"
    t.string "month"
    t.string "year"
    t.string "street_address"
    t.string "postal_code"
    t.string "city"
    t.integer "country_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_payout_details_on_country_id"
    t.index ["user_id"], name: "index_payout_details_on_user_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "studio_name"
    t.text "studio_details"
    t.integer "minimum_booking"
    t.string "studio_type"
    t.integer "studio_hours"
    t.string "past_clients"
    t.string "audio_samples"
    t.string "amenities"
    t.string "main_equipment"
    t.string "studio_rules"
    t.text "address"
    t.string "apt_suite_building"
    t.string "price_per_hour"
    t.boolean "is_audio_engineer"
    t.string "photos"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_premium_verified"
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
  end

end
