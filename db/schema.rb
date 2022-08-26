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

ActiveRecord::Schema[7.0].define(version: 2022_08_26_140020) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "price"
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relax_sound_authors", force: :cascade do |t|
    t.string "name"
    t.string "page_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relax_sound_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relax_sound_translations", force: :cascade do |t|
    t.string "locale"
    t.string "name"
    t.string "description"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "relax_sound_id"
    t.index ["relax_sound_id"], name: "index_relax_sound_translations_on_relax_sound_id"
  end

  create_table "relax_sounds", force: :cascade do |t|
    t.bigint "relax_sound_category_id"
    t.bigint "relax_sound_author_id"
    t.string "icon"
    t.string "license"
    t.integer "color_of_day"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "downloadable_url"
    t.index ["relax_sound_author_id"], name: "index_relax_sounds_on_relax_sound_author_id"
    t.index ["relax_sound_category_id"], name: "index_relax_sounds_on_relax_sound_category_id"
  end

  add_foreign_key "relax_sound_translations", "relax_sounds"
  add_foreign_key "relax_sounds", "relax_sound_authors"
  add_foreign_key "relax_sounds", "relax_sound_categories"
end
