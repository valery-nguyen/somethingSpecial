class Api::SearchesController < ApplicationController
  def index
    @products = Product.all
  end
end