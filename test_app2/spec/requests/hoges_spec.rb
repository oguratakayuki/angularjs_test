require 'rails_helper'

RSpec.describe "Hoges", :type => :request do
  describe "GET /hoges" do
    it "works! (now write some real specs)" do
      get hoges_path
      expect(response).to have_http_status(200)
    end
  end
end
