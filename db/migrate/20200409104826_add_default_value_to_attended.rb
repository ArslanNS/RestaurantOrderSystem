class AddDefaultValueToAttended < ActiveRecord::Migration[6.0]
  def change
    change_column_default :calls, :attended, false
  end
end
