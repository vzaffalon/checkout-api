class AddItemIdToOrderItemsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :item_id, :bigint, after: :quantity
    add_index :order_items, :item_id
  end
end
