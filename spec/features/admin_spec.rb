require 'rails_helper'

describe 'admin page' do
  before do
    @user = User.create(email: "admin@admin.com", password: "asdfasdf", password_confirmation: "asdfasdf")
    login_as(@user, :scope => :user)
  end
  it 'has an admin link' do
    visit root_path
    expect(page).to have_content("Admin")
  end

  it 'menu item index page can be reached' do
    visit menu_items_path
    expect(page.status_code).to eq(200)
  end
end
