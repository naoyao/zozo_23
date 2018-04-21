class AddSizeIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :size_id, :integer, foregin_key: true, null: false
  end
end
