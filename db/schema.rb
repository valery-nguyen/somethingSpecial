# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_24_223550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_items", force: :cascade do |t|
    t.string "user_id", null: false
    t.integer "product_id", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "product_id"], name: "index_cart_items_on_user_id_and_product_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.integer "product_id", null: false
    t.index ["name", "product_id"], name: "index_categories_on_name_and_product_id"
  end

  create_table "product_images", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "image_url", null: false
    t.index ["product_id", "image_url"], name: "index_product_images_on_product_id_and_image_url"
  end

  create_table "products", force: :cascade do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.float "price", null: false
    t.string "story_title", null: false
    t.text "story_body", null: false
    t.string "maker_name"
    t.string "maker_location"
    t.string "maker_quote"
    t.text "maker_description"
    t.string "made_from"
    t.string "measurements"
    t.string "care"
    t.text "notes"
    t.string "item_id", null: false
    t.string "made_in"
    t.index ["title"], name: "index_products_on_title"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.integer "rating", null: false
    t.string "headline", null: false
    t.string "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "product_id"], name: "index_reviews_on_user_id_and_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.string "fname"
    t.string "lname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street"
    t.integer "zip"
    t.string "city"
    t.string "state"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

  create_table "wishes", force: :cascade do |t|
    t.string "user_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "product_id"], name: "index_wishes_on_user_id_and_product_id"
  end

end
