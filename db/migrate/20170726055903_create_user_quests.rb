class CreateUserQuests < ActiveRecord::Migration[5.0]
  def change
    create_table :user_quests do |t|
      t.integer :user_id
      t.integer :quest_id
      t.datetime :cleared_at

      t.timestamps
    end
  end
end
