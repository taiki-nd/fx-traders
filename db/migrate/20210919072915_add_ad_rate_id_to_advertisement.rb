class AddAdRateIdToAdvertisement < ActiveRecord::Migration[6.1]
  def change
    add_column :advertisements, :ad_rate_id, :integer
  end
end
