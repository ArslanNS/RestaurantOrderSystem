class AddBillToTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :tables, :bill, foreign_key: true
  end
end
