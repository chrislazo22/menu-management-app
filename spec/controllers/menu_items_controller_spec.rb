require 'rails_helper'

RSpec.describe MenuItemsController, type: :controller do
  describe 'GET #new' do
    it 'can be reached successfully' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
