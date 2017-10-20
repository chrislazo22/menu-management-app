require 'rails_helper'

describe 'form' do
  it 'has the correct input criteria' do
    fill_in 'menu_item[:name]', with: "Pancakes"
    fill_in "menu_item[:description]", with: "Description of Pancakes"
    fill_in "menu_item[:category]", with: "Main Entree"
    fill_in "menu_item[:price]", with: "$10.00"

    click_on "Submit"

    expect(page).to have_content("Pancakes")
  end
end
