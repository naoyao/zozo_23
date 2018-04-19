class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.references :product, foregin_key: true, null: false
      t.string :color, null: false
      t.string :size, null: false
      t.integer :stock, null: false
      t.integer :stock_limit
      t.timestamps
    end
  end
end
