require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'role' do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end

    it 'is will be an empty string by default' do
      expect(@user.role).to eq('')
    end

    it 'will accept game_master as a role' do
      @user.update(role: 'game_master')
      expect(@user.valid?).to be_truthy
    end

    it 'will accept game_player as a role' do
      @user.update(role: 'game_player')
      expect(@user.valid?).to be_truthy
    end

    it 'will not accept other values' do
      @user.update(role: 'king of the universe')
      expect(@user.valid?).to be_falsey
    end
  end

  describe '#game_master?' do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end

    it 'returns true if tue user has game_master as their role' do
      @user.update(role: 'game_master')
      @user.save!
      expect(@user.game_master?).to be_truthy
    end

    it 'returns false if the user is a non-game master' do
      expect(@user.game_master?).to be_falsey
    end
  end
end
