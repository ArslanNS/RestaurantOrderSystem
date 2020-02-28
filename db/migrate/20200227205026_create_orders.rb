class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :table, null: false, foreign_key:true
      t.references :food, null: false, foreign_key:true
      t.string :requests
      t.references :status, null: false, foreign_key:true

      t.timestamps
    end
  end
end
