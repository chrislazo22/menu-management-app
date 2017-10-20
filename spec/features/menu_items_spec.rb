require 'rails_helper'

describe 'homepage' do
  before do
    visit root_path
  end

  xit 'has a link to create new menu item' do
    find_link('Create Menu Item')
  end
end

describe 'form' do
  it 'has the correct input criteria' do
    visit new_menu_item_path
    fill_in "menu_item[name]", with: "Pancakes"
    fill_in "menu_item[description]", with: "Description of Pancakes"
    fill_in "menu_item[category]", with: "Main Entree"
    fill_in "menu_item[price]", with: "$10.00"

    click_on "Submit"

    expect(page).to have_content("Pancakes")
  end
end
