class Wish < ApplicationRecord
  validates :user_id, :product_id, presence: true
  validates :product_id, uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :product
end