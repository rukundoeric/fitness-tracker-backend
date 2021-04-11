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

ActiveRecord::Schema.define(version: 2021_04_11_081212) do

  create_table "measurements", force: :cascade do |t|
    t.string "value"
    t.integer "user_id"
    t.integer "things_to_measure_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["things_to_measure_id"], name: "index_measurements_on_things_to_measure_id"
    t.index ["user_id"], name: "index_measurements_on_user_id"
  end

  create_table "things_to_measures", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_things_to_measures_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "measurements", "things_to_measures"
  add_foreign_key "measurements", "users"
  add_foreign_key "things_to_measures", "users"
end
