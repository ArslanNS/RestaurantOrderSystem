class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.references :table, null: false, foreign_key:true
      t.float :total_price
      t.boolean :paid

      t.timestamps
    end
  end
end
