class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.text :allergens
      t.integer :calories
      t.float :price
      t.boolean :active

      t.timestamps
    end
  end
end
