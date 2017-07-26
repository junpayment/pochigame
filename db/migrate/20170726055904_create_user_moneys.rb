class CreateUserMoneys < ActiveRecord::Migration[5.0]
  def change
    create_table :user_moneys do |t|
      t.integer :user_id
      t.integer :remain

      t.index [:user_id]
      t.timestamps
    end
  end
end
