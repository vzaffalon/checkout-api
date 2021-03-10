class CreatePaymentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :card_number
      t.string :holder_name
      t.string :cvv
      t.string :exp_year
      t.string :exp_month
      t.bigint :order_id, index: true

      t.datetime :deleted_at

      t.timestamps
    end
  end
end
