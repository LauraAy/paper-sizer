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

ActiveRecord::Schema.define(version: 20170319044345) do

  create_table "manuscripts", force: :cascade do |t|
    t.string   "repository",  limit: 255
    t.string   "call_number", limit: 255
    t.string   "ms_format",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "papers", force: :cascade do |t|
    t.float    "paper_height", limit: 24
    t.float    "paper_width",  limit: 24
    t.string   "chain_lines",  limit: 255
    t.string   "format",       limit: 255
    t.string   "name",         limit: 255
    t.text     "result",       limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
