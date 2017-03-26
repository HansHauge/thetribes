require 'rails_helper'

RSpec.describe "human_tribes/show", type: :view do
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

    @human_tribe = assign(:human_tribe, HumanTribe.create!(
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
    ))
    sign_in_and_get_mappings_for_gm
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
