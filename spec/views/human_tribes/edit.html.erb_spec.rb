require 'rails_helper'

RSpec.describe "human_tribes/edit", type: :view do
  before(:each) do
    sign_in_and_get_mappings_for_gm

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

    @human_tribe = assign(:human_tribe, HumanTribe.create!(
      :name => "MyString",
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
    ))
  end

  it "renders the edit human_tribe form" do
    render

    assert_select "form[action=?][method=?]", human_tribe_path(@human_tribe), "post" do

      assert_select "input#human_tribe_name[name=?]", "human_tribe[name]"

      assert_select "textarea#human_tribe_abilities[name=?]", "human_tribe[abilities]"

      assert_select "textarea#human_tribe_history_and_culture[name=?]", "human_tribe[history_and_culture]"

      # assert_select "select" do |elements|
      #   elements.each do |element|
      #     assert_select element, "option", 1
      #   end
      # end
      # assert_select "select#human_tribe_geographic_area_id[name=?]", "human_tribe[geographic_area_id]"

      assert_select "textarea#human_tribe_skills_and_professions[name=?]", "human_tribe[skills_and_professions]"

      assert_select "textarea#human_tribe_appearance[name=?]", "human_tribe[appearance]"

      assert_select "textarea#human_tribe_alliances[name=?]", "human_tribe[alliances]"

      assert_select "textarea#human_tribe_enemies[name=?]", "human_tribe[enemies]"

      assert_select "textarea#human_tribe_trade_and_commerce[name=?]", "human_tribe[trade_and_commerce]"

      assert_select "textarea#human_tribe_political_structure[name=?]", "human_tribe[political_structure]"

      assert_select "textarea#human_tribe_notes[name=?]", "human_tribe[notes]"
    end
  end
end
