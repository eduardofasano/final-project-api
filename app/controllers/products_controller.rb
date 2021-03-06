class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]


  # POST /products/1/expired
  def expiredEmail
    UserMailer.expired_email(user).deliver_now
      render json: @user
  end

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)
    @product.seller = current_user

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:name, :quantity, :unit, :max_price, :min_price, :final_price, :description, :seller_id, :enddate, :image1, :image2, :image3, :current_quantity, :currency)
    end
end
