class ChangePriceToIncludePrecisionAndScale < ActiveRecord::Migration[5.1]
  def change
    change_column :menu_items, :price, :decimal, :precision => 8, :scale => 2
  end
end
