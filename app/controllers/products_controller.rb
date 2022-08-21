class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def create 
    # render html: params
    @product = Product.new(params_product)   
    if @product.save
      redirect_to store_url(store), notice: "商品建立成功"
    else
      render :new
    end
  end
  def show
    
  end
  def edit
    
  end
  def update
    
  end
  def destroy
    
  end

  private
  def params_product
    params.require(:product).permit(:name, :price)
  end
  def find_product
    @product = Product.find(params[:id])
  end
end
