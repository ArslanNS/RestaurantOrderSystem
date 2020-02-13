class AddSectionToFoods < ActiveRecord::Migration[6.0]
  def change
    add_reference :foods, :section, null: false, foreign_key: true
  end
end
