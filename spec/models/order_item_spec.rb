require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  before do
    @menu_item = MenuItem.create name: "Pancake", description: "This is a pancake", category: "Entree", price: 10.00, id: 1
    @order_item = OrderItem.create id: 1, menu_item_id:1, order_id: 1, unit_price: 10.00, quantity: 2
  end

  describe '#unit_price' do
    it 'displays correct unit price' do
      expect(@order_item.unit_price).to eq(10.00)
    end
  end

  describe '#total_price' do
    it 'outputs correct total_price' do
      expect(@order_item.total_price).to eq(20.00)
    end
  end
end
