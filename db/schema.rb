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

ActiveRecord::Schema.define(version: 20161025185404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string   "name",                         null: false
    t.string   "colors",                       null: false
    t.integer  "number_played",                null: false
    t.string   "img_url",                      null: false
    t.integer  "deck_id",                      null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "main?",         default: true
    t.index ["deck_id"], name: "index_cards_on_deck_id", using: :btree
  end

  create_table "decks", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "placing",       null: false
    t.string   "colors",        null: false
    t.string   "archetype",     null: false
    t.string   "player",        null: false
    t.integer  "tournament_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tournament_id"], name: "index_decks_on_tournament_id", using: :btree
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.string   "searchable_type"
    t.integer  "searchable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "location",   null: false
    t.string   "date",       null: false
    t.string   "format",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end