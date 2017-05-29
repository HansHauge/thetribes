require 'rails_helper'

RSpec.describe "creature_types/edit", type: :view do
  before(:each) do
    @creature_type = assign(:creature_type, CreatureType.create!(
      :name => "MyString"
    ))
    sign_in_and_get_mappings_for_gm
  end

  it "renders the edit creature_type form" do
    render

    assert_select "form[action=?][method=?]", creature_type_path(@creature_type), "post" do

      assert_select "input#creature_type_name[name=?]", "creature_type[name]"
    end
  end
end
