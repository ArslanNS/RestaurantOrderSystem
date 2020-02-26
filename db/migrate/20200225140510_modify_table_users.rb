class ModifyTableUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :table, null: true, foreign_key: true
    add_reference :users, :table, null: true, foreign_key: true, default: 1
  end
end
