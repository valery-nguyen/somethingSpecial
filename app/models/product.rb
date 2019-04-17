class Product < ApplicationRecord
  validates :title, :description, :story_title, :story_body, presence: true
  validates :title, :item_id, uniqueness: true

  has_many :product_images
  has_many :cart_items

  def related_products
    # we are simulating related products by picking randomly from our database
    Product.all.where.not(id: self.id).sample(6)
  end
end