class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false, index: true, unique: true
      t.string :description, null: false
      t.float :price, null: false
    end
  end
end
