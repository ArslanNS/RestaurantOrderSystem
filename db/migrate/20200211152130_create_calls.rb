class CreateCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :calls do |t|
      t.bigint :table_id
      t.datetime :call_time
      t.datetime :call_accpet

      t.timestamps
    end
  end
end
