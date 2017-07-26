class CreateGrowths < ActiveRecord::Migration[5.0]
  def change
    create_table :growths do |t|
      t.integer :type
      t.integer :level
      t.integer :exp
      t.integer :attack
      t.integer :defense
      t.integer :hp

      t.timestamps
    end
  end
end
