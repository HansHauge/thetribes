require 'rails_helper'

RSpec.describe "geographic_areas/show", type: :view do
  describe 'when all attributes are present' do
    before(:each) do
      @geographic_area = assign(:geographic_area, GeographicArea.create!(
        :name => "Name",
        :summary => "Summary",
        :flora => "Flora",
        :fauna => "Fauna",
        :civilizations => "Civilizations",
        :ruins => "Ruins",
        :landscape => "Landscapes",
        :geography => "Geography",
        :territory_control => "Territory Control",
        :history => "History",
        :lore => "Lore",
        :archeology => "Archeology",
        :recommended_experience => "Recommended Exp",
        :size => "Size",
        :points_of_interest => "Points of Interest"
      ))
    end

    it "renders attributes in <p>" do
      render
      expect(rendered).to match(/Name/)
      expect(rendered).to match(/Summary/)
      expect(rendered).to match(/Flora/)
      expect(rendered).to match(/Fauna/)
      expect(rendered).to match(/Civilizations/)
      expect(rendered).to match(/Ruins/)
      expect(rendered).to match(/Landscapes/)
      expect(rendered).to match(/Geography/)
      expect(rendered).to match(/Territory Control/)
      expect(rendered).to match(/History/)
      expect(rendered).to match(/Lore/)
      expect(rendered).to match(/Archeology/)
      expect(rendered).to match(/Recommended Exp/)
      expect(rendered).to match(/Size/)
      expect(rendered).to match(/Points of Interest/)
    end
  end

  describe 'when only some attributes are present' do
    before(:each) do
      @geographic_area = assign(:geographic_area, GeographicArea.create!(
        :name => "Name"
      ))
    end

    it 'only shows the values that are present' do
      render
      expect(rendered).to match(/Name/)
      expect(rendered).to_not match(/Summary/)
      expect(rendered).to_not match(/Flora/)
      expect(rendered).to_not match(/Fauna/)
      expect(rendered).to_not match(/Civilizations/)
      expect(rendered).to_not match(/Ruins/)
      expect(rendered).to_not match(/Landscapes/)
      expect(rendered).to_not match(/Geography/)
      expect(rendered).to_not match(/Territory Control/)
      expect(rendered).to_not match(/History/)
      expect(rendered).to_not match(/Lore/)
      expect(rendered).to_not match(/Archeology/)
      expect(rendered).to_not match(/Recommended Exp/)
      expect(rendered).to_not match(/Size/)
      expect(rendered).to_not match(/Points of Interest/)
    end
  end
end
