class StoresController < ApplicationController
  before_action :find_store, only: [:show, :edit, :edit, :update, :destroy]
  def index
    @stores = Store.all
    @orders = Order.all
  end
  def new
    @store = Store.new
  end
  def create    
    @store = Store.new(params_store)
    if @store.save
      redirect_to stores_url, notice: "商家建立成功"
    else 
      render :new
    end
  end
  def show
    @products = @store.products.all
    @product = @store.products.new

    @orders = Order.all
    @order = Order.new
  end
  def edit
    
  end
  def update
    if @store.update(params_store)
      redirect_to stores_url, notice: "商家建立成功"
    else
      render :edit
    end
  end
  def destroy
    if @store.destroy
      redirect_to stores_path, notice: "商家刪除成功"
    else
      redirect_to stores_path, notice: "商家刪除失敗"
    end    
  end

  private
  def params_store
    params.require(:store).permit(:name, :address, :tel)
  end
  def find_store
    @store = Store.find(params[:id])
  end
end
