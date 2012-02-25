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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120225091404) do

  create_table "ingredients", :force => true do |t|
    t.string   "content"
    t.string   "um"
    t.integer  "value"
    t.integer  "position"
    t.integer  "recipe_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ingredients", ["recipe_id"], :name => "index_ingredients_on_recipe_id"

  create_table "instructions", :force => true do |t|
    t.string   "content"
    t.string   "position"
    t.time     "prep_time"
    t.integer  "recipe_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "instructions", ["recipe_id"], :name => "index_instructions_on_recipe_id"

  create_table "recipes", :force => true do |t|
    t.string   "title"
    t.string   "summary"
    t.string   "yield"
    t.string   "duration"
    t.string   "author"
    t.string   "photo"
    t.string   "video_url"
    t.date     "published_at"
    t.time     "cooking_time"
    t.time     "prep_time"
    t.string   "slug"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
  end

end
