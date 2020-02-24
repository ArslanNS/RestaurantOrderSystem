class ModifyTableIdCalls < ActiveRecord::Migration[6.0]
  def change
    remove_column :calls, :table_id, :integer
    add_reference :calls, :table, null: false, foreign_key: true
  end
end
