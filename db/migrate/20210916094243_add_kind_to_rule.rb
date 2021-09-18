class AddKindToRule < ActiveRecord::Migration[6.1]
  def change
    add_column :rules, :kind_id, :integer
  end
end
