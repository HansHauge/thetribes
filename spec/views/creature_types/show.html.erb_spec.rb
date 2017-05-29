require 'rails_helper'

RSpec.describe "creature_types/show", type: :view do
  before(:each) do
    @creature_type = assign(:creature_type, CreatureType.create!(
      :name => "Name"
    ))
    sign_in_and_get_mappings_for_gm
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
