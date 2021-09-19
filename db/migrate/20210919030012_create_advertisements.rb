class CreateAdvertisements < ActiveRecord::Migration[6.1]
  def change
    create_table :advertisements do |t|
      t.string :img_url
      t.string :af_link
      t.timestamps
    end
  end
end
