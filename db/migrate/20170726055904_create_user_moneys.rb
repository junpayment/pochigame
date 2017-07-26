class CreateUserMoneys < ActiveRecord::Migration[5.0]
  def change
    create_table :user_moneys do |t|
      t.integer :user_id
      t.integer :remain

      t.timestamps
    end
  end
end
