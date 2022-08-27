require 'rails_helper'

RSpec.describe "RelaxSoundImages", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/relax_sound_images/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/relax_sound_images/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/relax_sound_images/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/relax_sound_images/new"
      expect(response).to have_http_status(:success)
    end
  end

end
