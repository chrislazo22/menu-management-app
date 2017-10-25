require 'rails_helper'

describe 'admin page' do
  it 'has an admin link' do
    visit root_path
    expect(page).to have_content("Admin")
  end

  it 'links to menu items index page' do
    visit root_path
    click_link('Admin')

    expect(page).to have_content('Menu Items')
  end
end
