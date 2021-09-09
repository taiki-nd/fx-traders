class CreateLikeRules < ActiveRecord::Migration[6.1]
  def change
    create_table :like_rules do |t|
      t.references :user
      t.references :rule
      t.timestamps
    end
  end
end
