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

ActiveRecord::Schema.define(version: 20150624014118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.boolean  "JavaScript"
    t.boolean  "Java"
    t.boolean  "Ruby"
    t.boolean  "C"
    t.boolean  "CSS"
    t.boolean  "PHP"
    t.boolean  "Python"
    t.boolean  "CPlusPlus"
    t.boolean  "ObjectiveC"
    t.boolean  "CSharp"
    t.boolean  "Shell"
    t.boolean  "R"
    t.boolean  "CoffeeScript"
    t.boolean  "Go"
    t.boolean  "Perl"
    t.boolean  "Scala"
    t.boolean  "VimL"
    t.boolean  "Clojure"
    t.boolean  "Haskell"
    t.boolean  "Erlang"
    t.boolean  "Rust"
    t.boolean  "Swift"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "user_languages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.integer  "uid"
    t.string   "avatar_url"
    t.string   "html_url"
    t.boolean  "hireable"
    t.integer  "followers"
    t.integer  "following"
    t.string   "description"
    t.json     "raw_data"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "email"
    t.string   "token"
  end

end
