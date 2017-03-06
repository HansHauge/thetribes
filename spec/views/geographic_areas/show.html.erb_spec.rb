require 'rails_helper'

RSpec.describe "geographic_areas/show", type: :view do
  before(:each) do
    @geographic_area = assign(:geographic_area, GeographicArea.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
