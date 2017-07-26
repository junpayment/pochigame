class CreateContentMoneys < ActiveRecord::Migration[5.0]
  def change
    create_table :content_moneys do |t|
      t.integer :num

      t.timestamps
    end
  end
end
