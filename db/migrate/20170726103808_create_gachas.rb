class CreateGachas < ActiveRecord::Migration[5.0]
  def change
    create_table :gachas do |t|
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
