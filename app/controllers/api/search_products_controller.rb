class Api::SearchProductsController < ApplicationController
  def index
    search_query = params[:search_query].split
    @results = []
    substrings_hash = {}

    products = Product.all
    products.each do |product|
      substrings_hash[product.id] = substrings(product.title.downcase)
    end
    search_query.each do |query_key| 
      substrings_hash.each do |key, value|
        if value.include?(query_key)
          @results << Product.find(key)
        end
      end
    end

    render :index
  end

  private

  def substrings(str)
    arr = []
    str.length.times do |start|
      (1..str.length-start).each do|l|
        arr << str.slice(start,l)
      end
    end
    return arr
  end

end