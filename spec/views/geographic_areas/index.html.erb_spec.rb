require 'rails_helper'

RSpec.describe "geographic_areas/index", type: :view do
  before(:each) do
    assign(:geographic_areas, [
      GeographicArea.create!(
        :name => "Name",
        :summary => "My Summary",
        :flora => "My Flora",
        :fauna => "My Fauna",
        :civilizations => "My Civilizations",
        :ruins => "My Ruins",
        :landscape => "My Landscape",
        :geography => "My Geography",
        :territory_control => "My Territory Control",
        :history => "My History",
        :lore => "My Lore",
        :archeology => "My Archeology",
        :recommended_experience => "My Recommended Experience",
        :size => "My Size... giggity!",
        :points_of_interest => "My POI's"
      ),
      GeographicArea.create!(
        :name => "Name",
        :summary => "My Summary",
        :flora => "My Flora",
        :fauna => "My Fauna",
        :civilizations => "My Civilizations",
        :ruins => "My Ruins",
        :landscape => "My Landscape",
        :geography => "My Geography",
        :territory_control => "My Territory Control",
        :history => "My History",
        :lore => "My Lore",
        :archeology => "My Archeology",
        :recommended_experience => "My Recommended Experience",
        :size => "My Size... giggity!",
        :points_of_interest => "My POI's"
      )
    ])
  end

  it "renders a list of geographic_areas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # we're not showing these because it makes the page too cluttered
    # assert_select "tr>td", :text => "My Summary".to_s, :count => 2
    # assert_select "tr>td", :text => "My Flora".to_s, :count => 2
    # assert_select "tr>td", :text => "My Fauna".to_s, :count => 2
    # assert_select "tr>td", :text => "My Civilizations".to_s, :count => 2
    # assert_select "tr>td", :text => "My Ruins".to_s, :count => 2
    # assert_select "tr>td", :text => "My Landscape".to_s, :count => 2
    # assert_select "tr>td", :text => "My Geography".to_s, :count => 2
    # assert_select "tr>td", :text => "My Territory Control".to_s, :count => 2
    # assert_select "tr>td", :text => "My History".to_s, :count => 2
    # assert_select "tr>td", :text => "My Lore".to_s, :count => 2
    # assert_select "tr>td", :text => "My Archeology".to_s, :count => 2
    # assert_select "tr>td", :text => "My Recommended Experience".to_s, :count => 2
    # assert_select "tr>td", :text => "My Size... giggity!".to_s, :count => 2
    # assert_select "tr>td", :text => "My POI's".to_s, :count => 2
  end
end
