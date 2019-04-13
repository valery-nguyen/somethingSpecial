class ProductImage < ApplicationRecord
  validates :product_id, :image_url, presence: true
  validates :product_id, uniqueness: { scope: :image_url }

  belongs_to :product
end