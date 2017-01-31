class ItemsController < ApplicationController


  def index
  end

  def show
    @item = Item.find_by_id(params[:id])
  end

  def new
  end

  def create
  end


end
