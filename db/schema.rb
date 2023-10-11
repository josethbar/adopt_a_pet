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

ActiveRecord::Schema[7.0].define(version: 2023_10_10_162438) do
  create_table "animals", force: :cascade do |t|
    t.integer "age"
    t.string "color"
    t.string "weight"
    t.string "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.datetime "adoption_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Owner_id", null: false
    t.integer "Animal_id", null: false
    t.index ["Animal_id"], name: "index_pets_on_Animal_id"
    t.index ["Owner_id"], name: "index_pets_on_Owner_id"
  end

  add_foreign_key "pets", "Animals"
  add_foreign_key "pets", "Owners"
end
