class Api::CartItemsController < ApplicationController
  def index
    @cart_items = current_user.cart_items.includes(:product)
    @products = current_user.products.includes(:product_images)
    render :index
  end
  
  def create
    item_lookup_results = CartItem.where("product_id = ? and user_id = ?", cart_item_params["product_id"], current_user.id.to_s);
    
    if item_lookup_results.length != 0
      @cart_item = item_lookup_results.first
      @cart_item.quantity += cart_item_params["quantity"].to_i
    else
      @cart_item = CartItem.new(cart_item_params)
      @cart_item.user_id = current_user.id
    end

    if @cart_item.save
      @cart_items = current_user.cart_items
      @products = current_user.products
      render :index
    else
      render json: @cart_item.errors.full_messages, status: 422
    end
  end

  def update
    # debugger
    # @cart_item = current_user.cart_items.find(params[:id])

    # if @product.update(product_params)
    #     redirect_to product_url(@product)
    # else
    #     flash.now[:errors] = @product.errors.full_messages
    #     render :edit
    # end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:product_id, :quantity)
  end

end