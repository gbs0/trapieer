class ProductsController < ApplicationController
  before_action :set_user

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to user_product_path(product)
  end

  def index
  end

  def show
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
    @user = User.find(params[:user_id])
  end

  def product_params
    params.require(:product).permit( :image, :name, :category, :origin, :quantity, :price, :description, :seller_id )
  end



end


  # create_table "products", force: :cascade do |t|
  #   t.string "image"
  #   t.string "name"
  #   t.string "category"
  #   t.string "origin"
  #   t.integer "quantity"
  #   t.integer "price"
  #   t.text "description"
  #   t.bigint "user_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["user_id"], name: "index_products_on_user_id"
  # end
