require 'rails_helper'

describe 'admin page' do
  it 'has an admin link' do
    visit root_path
    expect(page).to have_content("Admin")
  end
end
