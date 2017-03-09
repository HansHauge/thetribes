require 'rails_helper'

RSpec.describe GeographicArea, type: :model do
  describe 'validations' do
    it 'is not valid without a name' do
      @geographic_area = GeographicArea.new()
      expect(@geographic_area.valid?).to be_falsey
    end

    it 'is valid when a name is present' do
      @geographic_area = GeographicArea.new(name: 'foo')
      expect(@geographic_area.valid?).to be_truthy
    end
  end
end
