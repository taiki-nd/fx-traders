class Record < ApplicationRecord

  with_options presence: true do
    validates :date
    validates :pips, format: {with: /\A[-]?[0-9]+(\.[0-9]+)?\z/}
    validates :entry_basis
    validates :lose_reason_text
  end

  belongs_to :user
  has_one_attached :image 
end
