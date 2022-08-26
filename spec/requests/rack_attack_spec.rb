require "rails_helper"
RSpec.describe "Rack::Attack", type: :request do
  include ActiveSupport::Testing::TimeHelpers

  before do
    Rack::Attack.enabled = true
    Rack::Attack.reset!
  end

  after do
    Rack::Attack.enabled = false
  end

  describe "GET /relax sounds" do
    it "successful for 50 requests, then blocks the user nicely" do
      50.times do
        get api_v1_relax_sounds_path
        expect(response.status).to eq 200
      end

      get api_v1_relax_sounds_path
      expect(response.body).to include("Retry later")
      expect(response).to have_http_status(:too_many_requests)

      travel_to(10.minutes.from_now) do
        get api_v1_relax_sounds_path
        expect(response.status).to eq 200
      end
    end
  end
end