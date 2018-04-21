class AddImageIdToStock < ActiveRecord::Migration[5.0]
  def change
    add_column :stocks, :image_id, :string , foreign_key: true, null: false
  end
end
