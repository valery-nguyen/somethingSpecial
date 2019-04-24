class Api::WishesController < ApplicationController
  def index
    @current_user = current_user
    @wishes = @current_user.wishes.includes(:product)
    @products = @current_user.wished_products.includes(:product_images)
    render :index
  end
  
  def create
    @current_user = current_user
    wish_lookup_results = Wish.where("product_id = ? and user_id = ?", wish_params[:product_id], @current_user.id.to_s);

    @wish = Wish.new(wish_params)
    @wish.user_id = @current_user.id

    if wish_lookup_results.length != 0 || @wish.save
      @wishes = @current_user.wishes.includes(:product)
      @products = @current_user.wished_products.includes(:product_images)
      render :index
    else
      render json: @wish.errors.full_messages, status: 422
    end
  end

  def destroy
    wish_lookup_results = Wish.where("product_id = ? and user_id = ?", params[:id], current_user.id.to_s);
    @wish = wish_lookup_results.first
    @wish.destroy

    @current_user = current_user
    @wishes = @current_user.wishes.includes(:product)
    @products = @current_user.wished_products.includes(:product_images)
    render :index
  end

  private

  def wish_params
    params.require(:wish).permit(:product_id)
  end

end