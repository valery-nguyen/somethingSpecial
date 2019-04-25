class Review < ApplicationRecord
  validates :user_id, :product_id, :rating, :headline, :comment, presence: true
  validates :product_id, uniqueness: { scope: :user_id }
  validates :rating, inclusion: { in: [1,2,3,4,5] }

  belongs_to :user
  belongs_to :product
end