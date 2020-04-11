class AddBillToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :bill, foreign_key: true
  end
end
