class CreateQuests < ActiveRecord::Migration[5.0]
  def change
    create_table :quests do |t|
      t.integer :quest_area_id

      t.index [:quest_area_id]
      t.timestamps
    end
  end
end
