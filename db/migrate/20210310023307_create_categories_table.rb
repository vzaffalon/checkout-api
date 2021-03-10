class CreateCategoriesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image_id

      t.datetime :deleted_at

      t.timestamps
    end
  end
end
