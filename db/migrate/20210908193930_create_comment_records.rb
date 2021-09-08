class CreateCommentRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_records do |t|
      t.text :text
      t.references :record, null: false, foreign_key: true
      t.timestamps
    end
  end
end
