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

ActiveRecord::Schema[7.0].define(version: 2023_11_17_214922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "discarding_dengue_residents", force: :cascade do |t|
    t.bigint "resident_id", null: false
    t.boolean "is_dengue"
    t.bigint "discarding_dengue_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discarding_dengue_id"], name: "index_discarding_dengue_residents_on_discarding_dengue_id"
    t.index ["resident_id"], name: "index_discarding_dengue_residents_on_resident_id"
  end

  create_table "discarding_dengues", force: :cascade do |t|
    t.integer "number_dengue_cases"
    t.bigint "house_id", null: false
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_discarding_dengues_on_house_id"
  end

  create_table "factor_deaths", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factor_deaths_residents", id: false, force: :cascade do |t|
    t.bigint "resident_id", null: false
    t.bigint "factor_death_id", null: false
    t.index ["factor_death_id", "resident_id"], name: "index_residents_factor_deaths"
    t.index ["resident_id", "factor_death_id"], name: "index_factor_deaths_residents"
  end

  create_table "fumigations", force: :cascade do |t|
    t.datetime "date"
    t.bigint "house_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_fumigations_on_house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "address"
    t.integer "number_residents"
    t.string "construction_material"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_houses_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_locations_on_parent_id"
  end

  create_table "residents", force: :cascade do |t|
    t.boolean "is_live"
    t.bigint "house_id", null: false
    t.integer "age"
    t.string "dni"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_of_death"
    t.index ["house_id"], name: "index_residents_on_house_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vector_breeding_sites_pickups", force: :cascade do |t|
    t.datetime "date"
    t.bigint "house_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_vector_breeding_sites_pickups_on_house_id"
  end

  add_foreign_key "discarding_dengue_residents", "discarding_dengues"
  add_foreign_key "discarding_dengue_residents", "residents"
  add_foreign_key "discarding_dengues", "houses"
  add_foreign_key "fumigations", "houses"
  add_foreign_key "houses", "locations"
  add_foreign_key "locations", "locations", column: "parent_id"
  add_foreign_key "residents", "houses"
  add_foreign_key "vector_breeding_sites_pickups", "houses"
end
