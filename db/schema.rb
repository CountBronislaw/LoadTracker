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

ActiveRecord::Schema.define(version: 20151127055907) do

  create_table "batches", force: :cascade do |t|
    t.integer  "load_id"
    t.integer  "brass_id"
    t.integer  "press_id"
    t.integer  "quantity"
    t.integer  "brass_trimmed"
    t.text     "comments"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "brasses", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "caliber"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "bullets", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "style"
    t.text     "name"
    t.text     "weight"
    t.text     "caliber"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "loads", force: :cascade do |t|
    t.integer  "bullet_id"
    t.integer  "powder_id"
    t.integer  "primer_id"
    t.text     "powder_charge"
    t.text     "coal"
    t.text     "name"
    t.text     "load_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "powders", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "presses", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "model"
    t.integer  "round_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "primers", force: :cascade do |t|
    t.text     "manufacturer"
    t.text     "size"
    t.text     "style"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
