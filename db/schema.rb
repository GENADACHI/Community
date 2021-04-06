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

ActiveRecord::Schema.define(version: 2021_04_05_220535) do

  create_table "answers", force: :cascade do |t|
    t.integer "comment_id"
    t.integer "menber_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "discussion_id"
    t.integer "menber_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discussions", force: :cascade do |t|
    t.integer "discussion_id"
    t.string "theme"
    t.text "descripition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "likeable_id"
    t.string "likeable_type"
    t.integer "menber_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menbers", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.integer "prefectural_id"
    t.date "birthday"
    t.string "email"
    t.text "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
