class Advertisement < ApplicationRecord

  with_options presence: true do
    validates :img_url
    validates :af_link
  end
  
end
