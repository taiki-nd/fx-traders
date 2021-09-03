class CreateRules < ActiveRecord::Migration[6.1]
  def change
    create_table :rules do |t|
      t.string :name
      t.integer :issue_id
      t.integer :ashi_id
      t.integer :pair_id
      t.string :overview
      t.text :overview_content
      t.text :entry
      t.text :exit
      t.text :summary
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
