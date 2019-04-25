class Api::ReviewsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews.includes(:user)
    render :show
  end
  
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id

    if @review.save
      @product = Product.find(review_params[:product_id])
      @reviews = @product.reviews.includes(:user)
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end
  end


  private

  def review_params
    params.require(:review).permit(:product_id, :rating, :headline, :comment)
  end

end