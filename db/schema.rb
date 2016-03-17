# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160317220522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "about"
    t.string   "description"
    t.float    "price"
    t.string   "image"
    t.string   "genre"
    t.integer  "isbn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "rating"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.integer "book_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "reply"
    t.string   "by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "book_id"
  end

end
