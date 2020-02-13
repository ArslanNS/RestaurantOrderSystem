class RemoveUrlFromMenu < ActiveRecord::Migration[6.0]
  def change

    remove_column :menus, :url, :string
  end
end
