class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def lucky
    redirect_to carts_path
  end
end
