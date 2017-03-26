class CreateHumanTribes < ActiveRecord::Migration[5.0]
  def change
    create_table :human_tribes do |t|
      t.string :name
      t.text :abilities
      t.text :history_and_culture
      t.references :geographic_area, foreign_key: true
      t.text :skills_and_professions
      t.text :appearance
      t.text :alliances
      t.text :enemies
      t.text :trade_and_commerce
      t.text :political_structure
      t.text :notes

      t.timestamps
    end
  end
end
