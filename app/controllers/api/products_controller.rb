class Api::ProductsController < ApplicationController
  def index
    @products = Product.all.includes(:product_images)
  end

  def show
    title = params[:id].split('-').map(&:capitalize).join(' ')
    @products = Product.all
    @product = Product.where(title: title).first
    @related_products = @product.related_products
  end

end