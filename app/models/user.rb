class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = ['game_player', 'game_master', '']
  validates :role, inclusion: { in: ROLES }

  def game_master?
    self.role.eql?('game_master')
  end
end
