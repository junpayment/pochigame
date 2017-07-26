class CreateQuestAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :quest_areas do |t|
      t.string :name

      t.timestamps
    end
  end
end
