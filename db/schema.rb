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

ActiveRecord::Schema[7.0].define(version: 2024_11_07_075910) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lines", force: :cascade do |t|
    t.string "name"
    t.decimal "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lrt1s", force: :cascade do |t|
    t.string "name"
    t.float "distance_from_start"
    t.bigint "line_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "connections"
    t.index ["line_id"], name: "index_lrt1s_on_line_id"
  end

  create_table "lrt2s", force: :cascade do |t|
    t.string "name"
    t.float "distance_from_start"
    t.bigint "line_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_lrt2s_on_line_id"
  end

  create_table "mrt3s", force: :cascade do |t|
    t.string "name"
    t.float "distance_from_start"
    t.bigint "line_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_mrt3s_on_line_id"
  end

  add_foreign_key "lrt1s", "lines"
  add_foreign_key "lrt2s", "lines"
  add_foreign_key "mrt3s", "lines"
end
