class CreateGachaSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :gacha_sheets do |t|
      t.integer :gacha_id
      t.integer :content_id
      t.string :content_type
      t.integer :rate

      t.timestamps
      t.index [:gacha_id]
    end
  end
end
