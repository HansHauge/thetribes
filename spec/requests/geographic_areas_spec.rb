require 'rails_helper'

RSpec.describe "GeographicAreas", type: :request do
  describe "GET /geographic_areas" do
    # not sure about this, disabling for now
    xit "works! (now write some real specs)" do
      get geographic_areas_path
      expect(response).to have_http_status(200)
    end
  end
end
