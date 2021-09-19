class Advertisement < ApplicationRecord

  with_options presence: true do
    validates :img_url
    validates :af_link
    validates :ad_rate_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :ad_rate
  
end
