class Category < ApplicationRecord
  validates :name, :product_id, presence: true
  validates :name, uniqueness: { scope: :product_id }

  belongs_to :product
end