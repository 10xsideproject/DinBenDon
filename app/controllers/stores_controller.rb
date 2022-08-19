class StoresController < ApplicationController
  before_action :find_store, only: [:show, :edit, :update, :destroy]
  def index
    @stores = Store.all
  end
  def new
    @store = Store.new
  end  
  def create
    @store = Store.new(params_store)
    if @store.save
      redirect_to root_path, notice: "商店建立成功"
    else
      render :new
    end   
  end
  def show
    
  end  
  def edit
    
  end
  def update
    if @store.update(params_store)
      redirect_to root_path, notice: "商店更新成功"
    else
      render :edit
    end
  end
  def destroy
    @store.destroy
    redirect_to root_path, notice: "商店刪除成功"
  end

  private
  def params_store
    params.require(:store).permit(:name, :address, :tel)
  end
  def find_store
    @store = Store.find(params[:id])
  end  


end
