class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.text :allergens
      t.integer :calories
      t.decimal :price
      t.string :imgURL
      t.boolean :isActive

      t.timestamps
    end
  end
end
