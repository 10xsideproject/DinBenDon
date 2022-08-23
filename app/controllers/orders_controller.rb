# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :find_order, only: %i[show edit update destroy]
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    # render html: params
    # find_store
    @order = Order.new(params_order)
    if @order.save
      redirect_to root_url, notice: '訂單建立成功'
    else
      redirect_to root_url, notice: '訂單建立失敗'
    end
  end

  def show; end

  def edit
  end
  # def update

  # end
  def destroy
    @order.destroy
    redirect_to root_url, notice: '訂單刪除成功'
  end

  private

  def params_order
    params.require(:order).permit(:name, :quantity, :product_id)
  end

  def find_order
    @order = Order.find(params[:id])
  end

  def find_product
    @product = Order.find(params[:order][:product_id])
  end
  # def find_store
  #   @store = @product.store_id
  # end
end
