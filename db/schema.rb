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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menu_contains", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "menu_descriptor", id: :serial, force: :cascade do |t|
    t.string "name"
  end

  create_table "menu_items", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "calories"
    t.float "price"
    t.boolean "active"
  end

  create_table "menu_items_contains", primary_key: ["contains", "item"], force: :cascade do |t|
    t.integer "contains", null: false
    t.integer "item", null: false
    t.string "severity"
  end

  create_table "menu_items_descriptor", primary_key: ["descriptor", "item"], force: :cascade do |t|
    t.integer "descriptor", null: false
    t.integer "item", null: false
  end

  create_table "menu_sections", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "menu_sections_items", primary_key: ["section", "item"], force: :cascade do |t|
    t.integer "section", null: false
    t.integer "item", null: false
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "test", id: false, force: :cascade do |t|
    t.string "a", limit: 1
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at"
    t.datetime "modified_at"
    t.datetime "last_login"
    t.boolean "active"
    t.integer "role"
  end

  add_foreign_key "menu_items_contains", "menu_contains", column: "contains", name: "menu_items_contains_contains_fkey"
  add_foreign_key "menu_items_contains", "menu_items", column: "item", name: "menu_items_contains_item_fkey"
  add_foreign_key "menu_items_descriptor", "menu_descriptor", column: "descriptor", name: "menu_items_descriptor_descriptor_fkey"
  add_foreign_key "menu_items_descriptor", "menu_items", column: "item", name: "menu_items_descriptor_item_fkey"
  add_foreign_key "menu_sections_items", "menu_items", column: "item", name: "menu_sections_items_item_fkey"
  add_foreign_key "menu_sections_items", "menu_sections", column: "section", name: "menu_sections_items_section_fkey"
  add_foreign_key "users", "roles", column: "role", name: "users_role_fkey"
end
