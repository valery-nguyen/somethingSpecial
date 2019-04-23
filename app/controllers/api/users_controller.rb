class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def index
    @user = current_user
  end

  def update
    @user = current_user
    received_params = user_params

    if @user.is_password?(params[:user][:old_password])
      received_params[:password] = params[:user][:new_password]
    end

    if @user.update(received_params)
      render "api/users/index"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :fname, 
      :lname, 
      :street, 
      :zip, 
      :city, 
      :state, 
      :phone
    )
  end
end