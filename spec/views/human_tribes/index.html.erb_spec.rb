require 'rails_helper'

RSpec.describe "human_tribes/index", type: :view do
  before(:each) do
    geographic_area = assign(:geographic_area, GeographicArea.create!(
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

    assign(:human_tribes, [
      HumanTribe.create!(
        :name => "Name",
        :abilities => "MyText",
        :history_and_culture => "MyText",
        :geographic_area => geographic_area,
        :skills_and_professions => "MyText",
        :appearance => "MyText",
        :alliances => "MyText",
        :enemies => "MyText",
        :trade_and_commerce => "MyText",
        :political_structure => "MyText",
        :notes => "MyText"
      ),
      HumanTribe.create!(
        :name => "Name",
        :abilities => "MyText",
        :history_and_culture => "MyText",
        :geographic_area => geographic_area,
        :skills_and_professions => "MyText",
        :appearance => "MyText",
        :alliances => "MyText",
        :enemies => "MyText",
        :trade_and_commerce => "MyText",
        :political_structure => "MyText",
        :notes => "MyText"
      )
    ])
    sign_in_and_get_mappings_for_gm
  end

  it "renders a list of human_tribes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => nil.to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
