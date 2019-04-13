class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.integer :product_id, null: false
      t.string :image_url, null: false
    end
    add_index(:product_images, [:product_id, :image_url])
  end
end
