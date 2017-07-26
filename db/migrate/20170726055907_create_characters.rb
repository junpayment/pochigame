class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.integer :level_max
      t.string :name
      t.integer :growth_type
      t.integer :atack
      t.integer :defense
      t.integer :hp

      t.timestamps
    end
  end
end
