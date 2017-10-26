class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :new, :edit, :update, :destory]

  def index
    @menu_items = MenuItem.all
    @order_item = current_order.order_items.new
  end

  def new
    @menu_item = MenuItem.new
  end

  def show
  end

  def edit
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)

    if @menu_item.save
      redirect_to root_path, notice: "Menu Item was Successfully Added"
    else
      render :new
    end
  end

  def update
    if @menu_item.update(menu_item_params)
      redirect_to root_path, notice:"Menu Item was Successfully Updated"
    else
      render 'edit'
    end
  end

  def destroy
    @menu_item.destroy
    redirect_to root_path, notice: "Menu Item was Deleted"
  end

  private

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :category, :price, :image)
  end
end
