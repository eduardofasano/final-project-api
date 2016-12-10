class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]

  # GET /orders
  def index
    @orders = Order.where(order_params)

    render json: @orders, include: ['product', 'product.seller']
  end

  # GET /orders/1
  def show
    render json: @order, include: ['product', 'product.seller']
  end

  # POST /orders
  def create
    @order = Order.new(order_params)
    @order.buyer_id = current_user.id
    # @order.product = current_product

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.permit(:product_id, :buyer_id, :quantity)
    end
end
