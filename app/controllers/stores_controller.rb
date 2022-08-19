class StoresController < ApplicationController
  def index
  end
  def new
    
  end  
  def create
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
  def params_store
    params.require(:store).permit(:name, :address, :tel)
  end
  def find_store
    @store = Store.find(params[:id])
  end  


end
