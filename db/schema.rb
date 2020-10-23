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

ActiveRecord::Schema.define(version: 2020_10_20_082820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "disciplines", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines_events", id: false, force: :cascade do |t|
    t.integer "discipline_id"
    t.integer "event_id"
  end

  create_table "dropzones", force: :cascade do |t|
    t.text "state"
    t.text "dz_name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
  end

  create_table "events", force: :cascade do |t|
    t.text "name"
    t.date "date"
    t.text "organiser"
    t.text "coach"
    t.text "image"
    t.integer "price"
    t.text "contact"
    t.integer "dropzone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "discipline_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.string "license"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
