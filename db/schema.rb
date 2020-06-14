# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_14_141422) do

  create_table "people", force: :cascade do |t|
    t.string "current_name"
    t.integer "role_id", null: false
    t.integer "seniority_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_people_on_role_id"
    t.index ["seniority_id"], name: "index_people_on_seniority_id"
  end

  create_table "roles", force: :cascade do |t|
    t.text "name"
    t.text "short_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seniorities", force: :cascade do |t|
    t.text "name"
    t.text "prefix"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "people", "roles"
  add_foreign_key "people", "seniorities"
end
