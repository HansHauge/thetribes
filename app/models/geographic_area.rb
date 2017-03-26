class GeographicArea < ApplicationRecord
  validates_presence_of :name
  has_many :human_tribes, dependent: :destroy, inverse_of: :geographic_area

end
