class MenuItemsController < ApplicationController

  def index
    @menu_items = MenuItem.all
  end

  def new
    @menu_item = MenuItem.new
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
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
    @menu_item = MenuItem.find(params[:id])
    if @menu_item.update(menu_item_params)
      redirect_to root_path, notice:"Menu Item was Successfully Updated"
    else
      render 'edit'
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to root_path, notice: "Menu Item was Deleted"
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :category, :price)
  end
end
