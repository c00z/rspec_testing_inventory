class ItemsController < ApplicationController


  def index
  end

  def show
    @item = Item.find_by_id(params[:id])
  end

  def new
  end

  def create
    item = params.require(:item).permit(:size, :color, :status)
    @item = Item.create(item)
    if @item.save
    flash[:notice] = "ITEMS."
    redirect_to item_path(@item)
    else
      flash[:error] = "SHITS WRONG."
      redirect_to new_item_path
    end
  end




end
