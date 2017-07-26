class CreateQuestWaveEnemies < ActiveRecord::Migration[5.0]
  def change
    create_table :quest_wave_enemies do |t|
      t.integer :quest_wave_id
      t.integer :enemy_id

      t.index [:quest_wave_id]
      t.timestamps
    end
  end
end
