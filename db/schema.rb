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

ActiveRecord::Schema.define(version: 2019_04_11_071319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

end
