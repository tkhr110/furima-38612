class ItemsController < ApplicationController
  def index
     
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :explanation, :category_id, :condition_id, :dfee_id, :area_id, :dday_id, :price, :image).merge( user_id:current_user.id)
  end
end
