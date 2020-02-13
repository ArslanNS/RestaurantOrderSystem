class AddAttendedToCalls < ActiveRecord::Migration[6.0]
  def change
    add_column :calls, :attended, :boolean
  end
end
