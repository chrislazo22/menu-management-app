class StaticController < ApplicationController
  def menu
    @menu_items = MenuItem.all
    @order_item = current_order.order_items.new
  end
end
