class AddDefaultValueToPaid < ActiveRecord::Migration[6.0]
  def change
    change_column_default :bills, :paid, false
  end
end
