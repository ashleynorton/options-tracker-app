class CreateOptionEntries < ActiveRecord::Migration
  def change
    create_table :option_entries do |t|
      t.string :ticker
      t.string :option_type
      t.integer :profit_or_loss
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
