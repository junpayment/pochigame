class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :level
      t.integer :exp
      t.integer :stamina
      t.string :name
      t.datetime :last_play_at

      t.timestamps
    end
  end
end
