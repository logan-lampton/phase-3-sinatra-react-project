# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_03_145318) do

  create_table "members", force: :cascade do |t|
    t.string "character_name"
    t.string "player_name"
    t.string "class_name"
    t.string "race"
    t.integer "level"
    t.string "alignment"
    t.integer "party_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
    t.string "campaign"
    t.string "DM"
    t.string "description"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
  end

end
