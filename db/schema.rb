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

ActiveRecord::Schema.define(version: 2021_05_18_081240) do

  create_table "admin_users", force: :cascade do |t|
    t.string "first_name", limit: 25
    t.string "last_name", limit: 50
    t.string "email", limit: 100, default: "", null: false
    t.string "password_digest", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username", limit: 25
    t.index ["username"], name: "index_admin_users_on_username"
  end

  create_table "admin_users_blogs", id: false, force: :cascade do |t|
    t.integer "admin_user_id"
    t.integer "blog_id"
    t.index ["admin_user_id", "blog_id"], name: "index_admin_users_blogs_on_admin_user_id_and_blog_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.integer "category_id"
    t.string "name"
    t.string "permalink"
    t.integer "position"
    t.boolean "visible", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_blogs_on_category_id"
    t.index ["permalink"], name: "index_blogs_on_permalink"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.boolean "visible", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "section_edits", force: :cascade do |t|
    t.integer "admin_user_id"
    t.integer "section_id"
    t.string "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_user_id", "section_id"], name: "index_section_edits_on_admin_user_id_and_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.integer "blog_id"
    t.string "namd"
    t.integer "position"
    t.boolean "visible"
    t.string "content_type"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blog_id"], name: "index_sections_on_blog_id"
  end

end
