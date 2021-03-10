class CreateOrdersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :code
      t.integer :total_amount
      t.bigint :payment_id, index: true

      t.datetime :deleted_at

      t.timestamps
    end
  end
end
