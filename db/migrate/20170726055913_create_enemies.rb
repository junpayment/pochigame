class CreateEnemies < ActiveRecord::Migration[5.0]
  def change
    create_table :enemies do |t|
      t.integer :level
      t.integer :character_id

      t.timestamps
    end
  end
end
