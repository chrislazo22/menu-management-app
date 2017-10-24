require 'rails_helper'

describe 'homepage' do
  before do
    visit root_path
  end

  xit 'has a link to create new menu item' do
    find_link('Create Menu Item')
  end

  describe 'form' do
    it 'has the correct input criteria' do
      visit new_menu_item_path
      fill_in "menu_item[name]", with: "Pancakes"
      fill_in "menu_item[description]", with: "Description of Pancakes"
      select("Main Course", :from => "menu_item_category" )
      fill_in "menu_item[price]", with: "$10.00"

      click_on "Submit"
    end
  end

  describe 'show' do
    before do
      @menu_item = MenuItem.create name: "Pancake", description: "This is a pancake", category: "Entree", price: 10.00, id: 1
      visit menu_item_path(@menu_item)
    end
    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  describe 'edit' do
    before do
      @menu_item = MenuItem.create name: "Pancake", description: "This is a pancake", category: "Main Course", price: 10.00, id: 1
    end
    it 'can be reached successfully' do
      visit menu_item_path(@menu_item)
      expect(page.status_code).to eq(200)
    end

    it 'allows user to edit menu items' do
      visit edit_menu_item_path(@menu_item)

      fill_in "menu_item[name]", with: "Two Pancakes"

      click_on "Submit"

      expect(page).to have_content("Two Pancakes")
    end
  end

  describe 'delete' do
    before do
      @menu_item = MenuItem.create name: "Pancake", description: "This is a pancake", category: "Entree", price: 10.00, id: 1
    end
    it 'allows user to delete menu item' do
      visit menu_item_path(@menu_item)
      click_on("Delete")
      expect(page.status_code).to eq(200)
    end
  end
end
