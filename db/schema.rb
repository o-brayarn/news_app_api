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

ActiveRecord::Schema[7.0].define(version: 2023_04_10_094413) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

   create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "image"
    t.string "category"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "sources", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.string "hyperlinks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_sources_on_article_id"
  end

  create_table "trendings", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_trendings_on_article_id"
  end

  add_foreign_key "sources", "articles"
  add_foreign_key "trendings", "articles"
end
