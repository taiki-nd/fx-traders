class CreateCommentRules < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_rules do |t|
      t.text :text
      t.references :rule, null: false, foreign_key: true
      t.timestamps
    end
  end
end
