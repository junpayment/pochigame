class CreateQuestIncentives < ActiveRecord::Migration[5.0]
  def change
    create_table :quest_incentives do |t|
      t.integer :quest_id
      t.string :content_type
      t.integer :content_id
      t.integer :num

      t.index [:quest_id]
      t.timestamps
    end
  end
end
