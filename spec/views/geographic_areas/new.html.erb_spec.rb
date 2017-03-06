require 'rails_helper'

RSpec.describe "geographic_areas/new", type: :view do
  before(:each) do
    assign(:geographic_area, GeographicArea.new(
      :name => "MyString",
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
    ))
  end

  it "renders new geographic_area form" do
    render

    assert_select "form[action=?][method=?]", geographic_areas_path, "post" do

      assert_select "input#geographic_area_name[name=?]", "geographic_area[name]"

      assert_select "textarea#geographic_area_summary[name=?]", "geographic_area[summary]"

      assert_select "textarea#geographic_area_flora[name=?]", "geographic_area[flora]"

      assert_select "textarea#geographic_area_fauna[name=?]", "geographic_area[fauna]"

      assert_select "textarea#geographic_area_civilizations[name=?]", "geographic_area[civilizations]"

      assert_select "textarea#geographic_area_ruins[name=?]", "geographic_area[ruins]"

      assert_select "textarea#geographic_area_landscape[name=?]", "geographic_area[landscape]"

      assert_select "textarea#geographic_area_geography[name=?]", "geographic_area[geography]"

      assert_select "textarea#geographic_area_territory_control[name=?]", "geographic_area[territory_control]"

      assert_select "textarea#geographic_area_history[name=?]", "geographic_area[history]"

      assert_select "textarea#geographic_area_lore[name=?]", "geographic_area[lore]"

      assert_select "textarea#geographic_area_archeology[name=?]", "geographic_area[archeology]"

      assert_select "textarea#geographic_area_recommended_experience[name=?]", "geographic_area[recommended_experience]"

      assert_select "textarea#geographic_area_size[name=?]", "geographic_area[size]"

      assert_select "textarea#geographic_area_points_of_interest[name=?]", "geographic_area[points_of_interest]"
    end
  end
end
