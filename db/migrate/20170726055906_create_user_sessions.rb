class CreateUserSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :user_sessions do |t|
      t.integer :user_id
      t.string :session_key
      t.datetime :login_at

      t.index [:user_id]
      t.timestamps
    end
  end
end
