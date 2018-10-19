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

ActiveRecord::Schema.define(version: 2018_10_19_003232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "biography"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "artist_id"
    t.bigint "painting_id"
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_comments_on_artist_id"
    t.index ["painting_id"], name: "index_comments_on_painting_id"
  end

  create_table "paintings", force: :cascade do |t|
    t.bigint "artist_id"
    t.date "date_created"
    t.string "genre"
    t.string "copyright"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_paintings_on_artist_id"
  end

  add_foreign_key "comments", "artists"
  add_foreign_key "comments", "paintings"
  add_foreign_key "paintings", "artists"
end
