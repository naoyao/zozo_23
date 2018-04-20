class AddColumnToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :check_rule, :integer
  end
end
