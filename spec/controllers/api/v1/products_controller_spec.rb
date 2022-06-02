require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :controller do
  describe 'GET index' do
    it 'returns products' do
      get :index
      puts response
    end
  end
end
