class Record < ApplicationRecord

  with_options presence: true do
    validates :date
    validates :ashi_id
    validates :pair_id
    validates :pips, format: {with: /\A[-]?[0-9]+(\.[0-9]+)?\z/}
    validates :entry_basis
    validates :issue_id
    validates :lose_reason_text
  end

  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :ashi_id
    validates :pair_id
    validates :issue_id
  end

  belongs_to :user
  has_one_attached :image 
end
