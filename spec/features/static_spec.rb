require 'rails_helper'

describe 'homepage' do
  before do
    visit root_path
  end

  it 'has a link to create new menu item' do
    find_link('Create Menu Item')
  end
end
