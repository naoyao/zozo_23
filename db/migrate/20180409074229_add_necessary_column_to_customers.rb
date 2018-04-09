class AddNecessaryColumnToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :last_name, :string
    add_column :customers, :first_name, :string
    add_column :customers, :last_name_kana, :string
    add_column :customers, :first_name_kana, :string
    add_column :customers, :postal_code, :integer
    add_column :customers, :prefecture, :integer
    add_column :customers, :address_1, :string
    add_column :customers, :address_2, :string
    add_column :customers, :zozo_id, :string
    add_column :customers, :phone_num_1, :integer
    add_column :customers, :phone_num_2, :integer
    add_column :customers, :phone_num_3, :integer
    add_column :customers, :sexuality, :integer
    add_column :customers, :birthday, :datetime
    add_column :customers, :point, :integer
  end
end
