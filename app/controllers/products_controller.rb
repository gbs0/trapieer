class ProductsController < ApplicationController
  before_action :set_user,
  # before_action :set_product, only: [:show]

  def new
    @product = Product.new
  end

  def create
    @user = current_user
    @product = Product.new(product_params)
    @product.user_id = current_user.id

    # unless asset_exist?(@product.image)
    #   @product.image = 'https://picsum.photos/200/300'
    # end


    if @product.save
    raise
    redirect_to product_path(@product), notice: "Seu produto foi adicionado"
    else
    flash[:alert] = "Error"
    render :new
    end


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
    params.require(:product).permit( :name, :category, :origin, :quantity, :price, :description , :image, :image_cache)

  end

  def asset_exist?(path)
    if Rails.configuration.assets.compile
      Rails.application.precompiled_assets.include? path
    else
      Rails.application.assets_manifest.assets[path].present?
    end
  end
end


