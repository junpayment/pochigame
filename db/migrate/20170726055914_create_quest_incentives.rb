class CreateQuestIncentives < ActiveRecord::Migration[5.0]
  def change
    create_table :quest_incentives do |t|
      t.integer :type
      t.integer :id
      t.integer :num

      t.timestamps
    end
  end
end
