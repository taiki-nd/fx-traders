class AddImpressionsCountToRules < ActiveRecord::Migration[6.1]
  def change
    add_column :rules, :impressions_count, :integer
  end
end
