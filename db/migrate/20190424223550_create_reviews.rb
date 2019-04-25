class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.integer :rating, null: false
      t.string :headline, null: false
      t.string :comment, null: false
      t.timestamps
    end
    add_index(:reviews, [:user_id, :product_id])
  end
end
