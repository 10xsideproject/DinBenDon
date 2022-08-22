class ChangeQunaitiyToQuantityToOrders < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :qunaitiy, :quantity
  end
end
