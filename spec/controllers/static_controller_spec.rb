require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  describe 'GET #menu' do
    it 'can be reached successfully' do
      get :menu
      expect(response).to have_http_status(:success)
    end
  end
end
