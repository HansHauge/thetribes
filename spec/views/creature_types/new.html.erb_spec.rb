require 'rails_helper'

RSpec.describe "creature_types/new", type: :view do
  before(:each) do
    assign(:creature_type, CreatureType.new(
      :name => "MyString"
    ))
    sign_in_and_get_mappings_for_gm
  end

  it "renders new creature_type form" do
    render

    assert_select "form[action=?][method=?]", creature_types_path, "post" do

      assert_select "input#creature_type_name[name=?]", "creature_type[name]"
    end
  end
end
