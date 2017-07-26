class CreateGrowths < ActiveRecord::Migration[5.0]
  def change
    create_table :growths do |t|
      t.integer :growth_type
      t.integer :level
      t.integer :exp
      t.integer :attack
      t.integer :defense
      t.integer :hp

      t.timestamps
      t.index [:growth_type, :level]
      t.index [:exp]
    end
  end
end
