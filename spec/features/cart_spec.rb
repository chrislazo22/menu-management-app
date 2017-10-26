require 'rails_helper'

describe 'cart page' do
  before do
    visit root_path
    @menu_item = MenuItem.create name: "Pancake", description: "This is a pancake", category: "Entree", price: 10.00, id: 1
    @order_item = OrderItem.create id: 1, menu_item_id:1, order_id: 1, unit_price: 10.00, quantity: 2
  end
  describe 'navigation' do
    it 'can be reached successfully' do
      visit carts_path
    end
  end
end
