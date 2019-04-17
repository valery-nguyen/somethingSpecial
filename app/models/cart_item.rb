class CartItem < ApplicationRecord
  validates :user_id, :product_id, :quantity, presence: true
  validates :product_id, uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :product
end