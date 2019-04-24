class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.string :user_id, null: false
      t.integer :product_id, null: false
      t.timestamps
    end
    add_index(:wishes, [:user_id, :product_id])
  end
end
