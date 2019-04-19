class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :product_id, null: false
    end
    add_index(:categories, [:name, :product_id])
  end
end