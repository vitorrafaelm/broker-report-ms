# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_07_010606) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "broker_identifier"
    t.string "client_identifier"
    t.string "propertie_identifier"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "zipcode"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brokers", force: :cascade do |t|
    t.string "identifier"
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "document_type"
    t.string "document_number"
    t.string "broker_identifier"
    t.text "profile_picture"
    t.string "account_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_identifier"
    t.string "full_name"
    t.string "document_type"
    t.string "document_number"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "room_identifier"
    t.text "url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "broker_identifier"
    t.string "client_owner"
    t.string "rooms_quantity"
    t.string "informations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "property_identifier"
    t.string "room_name"
    t.decimal "room_width"
    t.decimal "room_length"
    t.text "room_description"
    t.text "room_observations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
