class Api::CartItemsController < ApplicationController
  def index
    @current_user = current_user
    @cart_items = @current_user.cart_items.includes(:product)
    @products = @current_user.products.includes(:product_images)
    
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
      @current_user = current_user
      @cart_items = @current_user.cart_items.includes(:product)
      @products = @current_user.products.includes(:product_images)
      render :index
    else
      render json: @cart_item.errors.full_messages, status: 422
    end
  end

  def update
    item_lookup_results = CartItem.where("product_id = ? and user_id = ?", cart_item_params["product_id"], current_user.id.to_s);
    @cart_item = item_lookup_results.first

    if @cart_item.update(cart_item_params)
      @current_user = current_user
      @cart_items = @current_user.cart_items.includes(:product)
      @products = @current_user.products.includes(:product_images)
      render :index
    else
      render json: @cart_item.errors.full_messages, status: 422
    end
  end

  def destroy
    item_lookup_results = CartItem.where("product_id = ? and user_id = ?", cart_item_params["product_id"], current_user.id.to_s);
    @cart_item = item_lookup_results.first
    @cart_item.destroy

    @current_user = current_user
    @cart_items = @current_user.cart_items.includes(:product)
    @products = @current_user.products.includes(:product_images)
    render :index
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:product_id, :quantity)
  end

end