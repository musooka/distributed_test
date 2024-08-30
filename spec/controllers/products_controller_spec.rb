require 'rails_helper'
require 'json'
RSpec.describe ProductsController, type: :controller do
  let(:params){ }
  describe "GET show" do
    it "returns a 200" do
      get :show, params: {
        "product":
        {
            "name":"creacion",
            "description": nil,
            "order_by_price": true,
            "order_by_price_asc": true,
            "order_by_created_at": true,
            "order_by_created_at_asc": false
        }
      }, as: :json
      expect(response).to have_http_status(:ok)
    end
  end
end