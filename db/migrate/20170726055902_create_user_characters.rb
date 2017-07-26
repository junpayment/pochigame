class CreateUserCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :user_characters do |t|
      t.integer :user_id
      t.string :character_id
      t.integer :level
      t.integer :exp

      t.index [:user_id, :character_id]
      t.timestamps
    end
  end
end
