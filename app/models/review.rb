class Review < ApplicationRecord
  validates :user_id, :product_id, :rating, :headline, :comment, presence: true
  validates :product_id, uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :product
end