class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :total
      t.decimal :tip

      t.timestamps
    end
  end
end
