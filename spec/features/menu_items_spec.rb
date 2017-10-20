require 'rails_helper'

describe 'form' do
  it 'can be reached successfully' do
    visit new_menu_item_path
    expect(page.status_code).to eq(200)
  end
end
