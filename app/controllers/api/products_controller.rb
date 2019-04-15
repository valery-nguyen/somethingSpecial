class Api::ProductsController < ApplicationController
  def index
    @products = Product.all.includes(:product_images)
  end

  def show
    title = params[:id].split('-').map(&:capitalize).join(' ')
    @product = Product.where(title: title).first
    @related_products = @product.related_products
    @products = Product.all
  end

end