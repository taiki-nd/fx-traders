class AddColumnToRules < ActiveRecord::Migration[6.1]
  def change
    add_column :rules, :indi_main_id, :integer
    add_column :rules, :indi_sub_id, :integer
  end
end
