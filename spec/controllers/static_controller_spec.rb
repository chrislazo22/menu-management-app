require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  describe 'GET #menu_items' do
    it 'can be reached successfully' do
      get :menu_items
      expect(response).to have_http_status(:success)
    end
  end
end
