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
    received_email = received_params.delete(:email)
    errors = []

    if (user_params[:email] && user_params[:email] != @user.email)
      if (!@user.is_password?(params[:user][:old_password]))
        errors.push('Email cannot be updated. The current Password entered is incorrect')
      else 
        received_params[:email] = received_email
      end
    end

    if (params[:user][:new_password] && params[:user][:new_password].length > 0)
      if (!@user.is_password?(params[:user][:old_password]))
        errors.push('Password cannot be updated. The current Password entered is incorrect')
      else
        received_params[:password] = params[:user][:new_password]
      end
    end

    if errors.empty? && @user.update(received_params)
      render "api/users/index"
    else
      render json: errors.concat(@user.errors.full_messages), status: 422
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