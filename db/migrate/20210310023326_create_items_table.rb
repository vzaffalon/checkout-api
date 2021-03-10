class CreateItemsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :image_id
      t.bigint :category_id, index: true

      t.datetime :deleted_at

      t.timestamps
    end
  end
end
