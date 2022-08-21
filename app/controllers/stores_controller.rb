class StoresController < ApplicationController
  before_aciton :find_store, only: [:show, :edit, :edit, :update, :destroy]
  def index
    @stores = Store.all
  end
  def new
    @store = Store.new
  end
  def create    
    @store = Store.new(params_store)
    if @store.save
      redirect_to stroes_url, notice: "商家建立成功"
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
      redirect_to stroes_url, notice: "商家建立成功"
    else
      render :edit
    end
  end
  def destroy
    if @store.destroy
      redirect_to stroes_path, notice: "商家刪除成功"
    else
      redirect_to stroes_path, notice: "商家刪除失敗"
    end    
  end

  private
  def params_store
    
  end
  def find_store
    @store = Store.find(params[:id])
  end
end
