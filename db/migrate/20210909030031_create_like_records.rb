class CreateLikeRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :like_records do |t|
      t.references :user, null: false, foreign_key: true
      t.references :record, null: false, foreign_key: true
      t.timestamps
    end
  end
end
