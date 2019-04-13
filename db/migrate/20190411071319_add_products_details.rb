class AddProductsDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :story_title, :string, null: false
    add_column :products, :story_body, :text, null: false
    add_column :products, :maker_name, :string
    add_column :products, :maker_location, :string
    add_column :products, :maker_quote, :string
    add_column :products, :maker_description, :text
    add_column :products, :made_from, :string
    add_column :products, :measurements, :string
    add_column :products, :care, :string
    add_column :products, :notes, :text
    add_column :products, :item_id, :string, null: false, unique: true
    add_column :products, :made_in, :string
  end
end
