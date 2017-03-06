class CreateGeographicAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :geographic_areas do |t|
      t.string :name
      t.text :summary
      t.text :flora
      t.text :fauna
      t.text :civilizations
      t.text :ruins
      t.text :landscape
      t.text :geography
      t.text :territory_control
      t.text :history
      t.text :lore
      t.text :archeology
      t.text :recommended_experience
      t.text :size
      t.text :points_of_interest

      t.timestamps
    end
  end
end
