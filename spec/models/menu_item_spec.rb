require 'rails_helper'

RSpec.describe MenuItem, :type => :model do
  describe 'validations' do
    before do
      @menu_item = MenuItem.create name: "Pancake", description: "This is a pancake", category: "Entree", price: 10.00, id: 1
    end

    it 'is valid with the correct attributes' do
      expect(@menu_item).to be_valid
    end

    it 'is not valid without a name' do
      @menu_item.name = nil
      expect(@menu_item).to_not be_valid
    end

    it 'is not valid without a description' do
      @menu_item.description = nil
      expect(@menu_item).to_not be_valid
    end
    it 'it not valid witout a price' do
      @menu_item.price = nil
      expect(@menu_item).to_not be_valid
    end

    xit 'is not valid without exactly two decimals' do
      @menu_item.price = 10.000
      expect(@menu_item).to_not be_valid
    end
  end
end
