require 'rails_helper'

describe 'menu' do
  before do
    visit root_path
    @menu_item = MenuItem.create name: "Pancake", description: "This is a pancake", category: "Entree", price: 10.00, id: 1
    @user = User.create email: "admin@admin.com", password: "asdfasdf", password_confirmation: "asdfasdf"
    login_as(@user, :scope => :user)
  end

  describe 'navigation' do
    it 'menu can be reached successfully' do
      visit root_path
      expect(page.status_code).to eq(200)
    end
  end

  describe 'form' do
    it 'can create a menu item with/without image' do
      visit new_menu_item_path
      fill_in "menu_item[name]", with: "Pancakes"
      fill_in "menu_item[description]", with: "Description of Pancakes"
      select("Main Course", :from => 'menu_item_category' )
      fill_in "menu_item[price]", with: "$10.00"
      attach_file("menu_item[image]", "app/assets/images/pancakes.jpg")

      click_on "Submit"

      expect(page).to have_content("Pancakes")
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      visit menu_item_path(@menu_item)
      expect(page.status_code).to eq(200)
    end
  end

  describe 'edit' do
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

  describe "i feel lucky" do
    it "can be created" do
      visit root_path

      fill_in :min_amount, with: 5.00
      fill_in :max_amount, with: 100.00

      click_on "I Feel Lucky"
    end
  end
end
