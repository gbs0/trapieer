class ProductsController < ApplicationController
  before_action :set_user,
  # before_action :set_product, only: [:show]
  
  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to user_product_path(product)
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  # Rotas destroy, edit & update ñ serão utilizadas na apresentação
  # def edit
  # end

  # def destroy
  # end

  # def update
  # end

  private
  def set_user
    @user = current_user
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit( :image, :name, :category, :origin, :quantity, :price, :description )
  end
end


