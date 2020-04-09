class AddBillToTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :tables, :current_bill, foreign_key: {to_table: :bills}
  end
end
