class Api::CategoriesController < ApplicationController
  def show
    @category_name = params[:id]
    @categorizedItems = Category.where(name: @category_name).includes(:product)
    @products = @categorizedItems.map{|cat| cat.product}
    render :index
  end

end