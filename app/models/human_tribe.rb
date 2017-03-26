class HumanTribe < ApplicationRecord
  belongs_to :geographic_area
  validates_presence_of :name

end
