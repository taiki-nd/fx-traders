class AddKindIdToRecord < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :kind_id, :integer
  end
end
