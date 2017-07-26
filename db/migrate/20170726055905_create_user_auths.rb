class CreateUserAuths < ActiveRecord::Migration[5.0]
  def change
    create_table :user_auths do |t|
      t.integer :user_id
      t.string :auth_key

      t.timestamps
    end
  end
end
