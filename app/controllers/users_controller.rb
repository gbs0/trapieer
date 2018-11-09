class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to root_path
  end

  def show
    @products = current_user.products
  end

  # acões edit e update não serão apresentadas
  # def edit
  # end

  # def update
  # end

  private

  def user_params
    params.require(:user).permit( :name, :address, :email, :password, :balance, :avatar )
  end

end
