require 'rails_helper'

RSpec.describe CartsController, type: :controller do
  describe "#lucky" do
    it "redirects to carts_path" do
      post :lucky, params: { min_amount: 5.00, max_amount: 100.00 }
      expect(response).to redirect_to(carts_path)
    end
  end
end
