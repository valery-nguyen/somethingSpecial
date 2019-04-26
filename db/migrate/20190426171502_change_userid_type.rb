class ChangeUseridType < ActiveRecord::Migration[5.2]
  def change
    change_column :cart_items, :user_id, 'integer USING CAST(user_id AS integer)'
    change_column :wishes, :user_id, 'integer USING CAST(user_id AS integer)'
  end
end
