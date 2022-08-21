class ProductsController < ApplicationController
  before_action :find_product, only: [:edit, :update, :destroy]
  before_action :find_store , only: [:create, :update]
  def index
    @products = Product.all.includes(:order)
  end
  def new
    # render html: params
    # @product = Product.new
  end
  def create 
    @product = Product.new(params_product)   
    # render json:@product
    # @product.save
    if @product.save
      # redirect_to store_url(@store), notice: "商品建立成功"
      # redirect_to stores_url, notice: "商品建立成功"
      redirect_to store_url(@store), notice: "商品建立成功"
    else
    #   render "stores/show"
    # redirect_to store_url(@store) , notice: "商品建立失敗"
      redirect_to store_url(@store), notice: "商品建立失敗"
    end
  end
  def show
    
  end
  def edit
    
  end
  def update
    if @product.update(params_product)
      redirect_to store_url(@store), notice: "商品更新成功"
    else
      redirect_to store_url(@store), notice: "商品更新失敗"
    end
  end
  def destroy
    @store = params[:store_id]
    @product.destroy
    redirect_to store_url(@store), notice: "商品刪除成功"
  end

  private
  def params_product
    params.require(:product).permit(:name, :price, :store_id)
  end
  def find_product
    @product = Product.find(params[:id])
  end
  def find_store
    @store = Store.find(params[:product][:store_id])
  end  

end
