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

ActiveRecord::Schema.define(version: 20170311223502) do

  create_table "makes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "name"
    t.integer  "make_id"
    t.string   "year_id"
    t.string   "car_tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["make_id"], name: "index_models_on_make_id"

  create_table "trims", force: true do |t|
    t.integer  "model_id"
    t.text     "description"
    t.string   "msrp"
    t.string   "invoice"
    t.string   "engine"
    t.string   "transmission"
    t.string   "num_of_doors"
    t.string   "mpg_city"
    t.string   "mpg_hwy"
    t.string   "crappy_image"
    t.string   "default_matched_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "combined_fuel_economy"
  end

  add_index "trims", ["model_id"], name: "index_trims_on_model_id"

end
