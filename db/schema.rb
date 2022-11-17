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

ActiveRecord::Schema[7.0].define(version: 2022_11_17_175716) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.bigint "user_supplement_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_supplement_id"], name: "index_reviews_on_user_supplement_id"
  end

  create_table "supplements", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.text "description"
    t.bigint "user_id", null: false
    t.integer "quantity"
    t.integer "frequency"
    t.string "unit_measure"
    t.string "images"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_supplements_on_user_id"
  end

  create_table "user_supplements", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "supplement_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplement_id"], name: "index_user_supplements_on_supplement_id"
    t.index ["user_id"], name: "index_user_supplements_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reviews", "user_supplements"
  add_foreign_key "supplements", "users"
  add_foreign_key "user_supplements", "supplements"
  add_foreign_key "user_supplements", "users"
end
