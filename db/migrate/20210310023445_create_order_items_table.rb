class CreateOrderItemsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :price
      t.integer :quantity
      t.integer :total_amount
      t.bigint :order_id, index: true

      t.datetime :deleted_at

      t.timestamps
    end
  end
end
