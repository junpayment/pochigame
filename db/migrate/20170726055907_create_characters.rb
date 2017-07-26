class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.integer :rarity
      t.integer :level_max
      t.string :name
      t.integer :growth_type
      t.integer :attack
      t.integer :defense
      t.integer :hp
      t.integer :price
      t.integer :exp

      t.timestamps

      t.index [:rarity]
    end
  end
end
