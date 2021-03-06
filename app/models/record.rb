class Record < ApplicationRecord

  def self.last_week
    to = Date.current.at_end_of_day
    from = to - 1.week
    Record.includes(:user).where(created_at: from...to).order('impressions_count DESC').limit(4)
  end

  is_impressionable counter_cache: true

  with_options presence: true do
    validates :date
    validates :ashi_id
    validates :pair_id
    validates :pips, numericality: true
    validates :entry_basis
    validates :issue_id
    validates :kind_id
    validates :lose_reason_id
    validates :lose_reason_text
  end

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :ashi_id
    validates :pair_id
    validates :issue_id
    validates :kind_id
    validates :lose_reason_id
  end

  belongs_to :user
  has_many :comment_records, dependent: :destroy
  has_one_attached :image 
  has_many :like_records, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ashi
  belongs_to :pair
  belongs_to :issue
  belongs_to :lose_reason
  belongs_to :kind
  belongs_to :indi_main
  belongs_to :indi_sub
  belongs_to :order

end
