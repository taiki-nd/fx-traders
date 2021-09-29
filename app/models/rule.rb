class Rule < ApplicationRecord

  def self.last_week
    to = Date.current.at_end_of_day
    from = to - 1.week
    Rule.includes(:user).where(created_at: from...to).order('impressions_count DESC').limit(4)
  end

  is_impressionable counter_cache: true

  with_options presence: true do
    validates :image
    validates :name
    validates :ashi_id
    validates :kind_id
    validates :pair_id
    validates :issue_id
    validates :overview
    validates :overview_content
    validates :entry
    validates :exit
    validates :summary
  end

  with_options numericality: { other_than: 1 ,message: 'を選択してください' } do
    validates :ashi_id
    validates :pair_id
    validates :issue_id
    validates :kind_id
  end

  belongs_to :user
  has_one_attached :image 
  has_many :comment_rules, dependent: :destroy
  has_many :like_rules, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ashi
  belongs_to :pair
  belongs_to :issue
  belongs_to :kind
  belongs_to :indi_main
  belongs_to :indi_sub

end
