require 'rails_helper'

RSpec.describe MenuItemsController, type: :controller do
  describe 'navigation' do
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      sign_in @user = User.create(email: "user@user.com", password: "asdfasdf", password_confirmation: "asdfasdf")
    end

    describe 'GET #index' do
      it 'can be reached successfully' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

    describe 'GET #new' do
      it 'can be reached successfully' do
        get :new
        expect(response).to have_http_status(:success)
      end
    end
  end
end
