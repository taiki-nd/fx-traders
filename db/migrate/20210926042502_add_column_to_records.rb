class AddColumnToRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :indi_main_id, :integer
    add_column :records, :indi_sub_id, :integer
  end
end
