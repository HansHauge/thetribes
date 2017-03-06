require 'rails_helper'

RSpec.describe "geographic_areas/index", type: :view do
  before(:each) do
    assign(:geographic_areas, [
      GeographicArea.create!(
        :name => "Name",
        :summary => "MyText",
        :flora => "MyText",
        :fauna => "MyText",
        :civilizations => "MyText",
        :ruins => "MyText",
        :landscape => "MyText",
        :geography => "MyText",
        :territory_control => "MyText",
        :history => "MyText",
        :lore => "MyText",
        :archeology => "MyText",
        :recommended_experience => "MyText",
        :size => "MyText",
        :points_of_interest => "MyText"
      ),
      GeographicArea.create!(
        :name => "Name",
        :summary => "MyText",
        :flora => "MyText",
        :fauna => "MyText",
        :civilizations => "MyText",
        :ruins => "MyText",
        :landscape => "MyText",
        :geography => "MyText",
        :territory_control => "MyText",
        :history => "MyText",
        :lore => "MyText",
        :archeology => "MyText",
        :recommended_experience => "MyText",
        :size => "MyText",
        :points_of_interest => "MyText"
      )
    ])
  end

  it "renders a list of geographic_areas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
