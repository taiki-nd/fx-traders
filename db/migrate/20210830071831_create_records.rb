class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.date :date
      t.integer :ashi
      t.integer :pair
      t.float :entry_rate
      t.float :exit_rate
      t.float :pips
      t.text :entry_basis
      t.integer :issue
      t.integer :lose_reason
      t.text :lose_reason_text
      t.references :user
      t.timestamps
    end
  end
end
