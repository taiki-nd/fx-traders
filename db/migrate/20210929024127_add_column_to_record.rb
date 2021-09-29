class AddColumnToRecord < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :order_id, :integer
  end
end
