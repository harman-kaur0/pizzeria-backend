class AddOrderHistoryToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :order_history, :text
    remove_column :orders, :new_orders, :text
  end
end
