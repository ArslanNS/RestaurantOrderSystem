class RemoveCallTimeAndCallAccpetFromCalls < ActiveRecord::Migration[6.0]
  def change

    remove_column :calls, :call_time, :datetime

    remove_column :calls, :call_accpet, :datetime
  end
end
