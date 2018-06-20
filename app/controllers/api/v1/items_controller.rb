class Api::V1::ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end

  def create
    @item = Item.create(item_params)
    render json: @item
  end

  def destroy
    Item.destroy(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    render json: @item
  end

  private

  def item_params
    params.require(:item).permit(:name, :img_src, :amount, :price)
  end

end
