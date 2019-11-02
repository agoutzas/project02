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

ActiveRecord::Schema.define(version: 2019_11_01_004226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Subjects", force: :cascade do |t|
    t.text "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "folders", force: :cascade do |t|
    t.text "name"
    t.text "category"
    t.integer "yr_level"
    t.text "topic"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "folders_resources", id: false, force: :cascade do |t|
    t.integer "folder_id"
    t.integer "resource_id"
  end

  create_table "resources", force: :cascade do |t|
    t.text "category"
    t.text "topic"
    t.integer "yr_level"
    t.text "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resources_topics", id: false, force: :cascade do |t|
    t.integer "topic_id"
    t.integer "resource_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.text "name"
    t.text "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "topics", force: :cascade do |t|
    t.text "topic"
    t.integer "yr_level"
    t.text "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "school"
    t.integer "yr_level"
    t.text "email"
    t.text "photo"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
  end

end
