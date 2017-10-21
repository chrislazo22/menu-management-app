class ChangeMenuItemsDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :menu_items, :description, :text
  end
end
