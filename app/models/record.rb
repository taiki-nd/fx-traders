class Record < ApplicationRecord

  with_options presence: true do
    validates :date
    validates :ashi_id
    validates :pair_id
    validates :pips, numericality: true
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

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ashi
  belongs_to :pair
  belongs_to :issue
  belongs_to :lose_reason

end
