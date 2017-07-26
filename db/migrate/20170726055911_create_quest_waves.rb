class CreateQuestWaves < ActiveRecord::Migration[5.0]
  def change
    create_table :quest_waves do |t|
      t.integer :quest_id

      t.index [:quest_id]
      t.timestamps
    end
  end
end
