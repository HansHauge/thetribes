require 'rails_helper'

RSpec.describe "creature_types/index", type: :view do
  before(:each) do
    assign(:creature_types, [
      CreatureType.create!(
        :name => "Name"
      ),
      CreatureType.create!(
        :name => "Name"
      )
    ])
    sign_in_and_get_mappings_for_gm
  end

  it "renders a list of creature_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
